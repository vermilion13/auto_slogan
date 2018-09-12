class Sentence2sController < ApplicationController
  
  before_action :set_sentence2, only: [:show, :edit, :update, :destroy]

  def index
    @sentence2 = Sentence2.all
  end

  def new
    if params[:back]
      @sentence2 = Sentence2.new(sentence2_params)
    else
      @sentence2 = Sentence2.new
    end
  end

  def create
    @sentence2 = Sentence2.new(sentence2_params)
    if @sentence2.save
      redirect_to sentence2s_path, notice: "登録を完了しました。"
    else
      render 'new'
    end
  end

  def confirm
    @sentence2 = Sentence2.new(sentence2_params)
    render :new if @sentence2.invalid?
  end

  def show
  end

  def edit
  end

  def update
    if @sentence2.update(sentence2_params)
      redirect_to sentence2s_path, notice: "編集を完了しました。"
    else
      render 'edit'
    end
  end

  def destroy
    @sentence2.destroy
    redirect_to sentence2s_path, notice:"削除を完了しました。"
  end

  private

  def sentence2_params
    params.require(:sentence2).permit(:sentence_center)
  end

  def set_sentence2
    @sentence2 = Sentence2.find(params[:id])
  end


end