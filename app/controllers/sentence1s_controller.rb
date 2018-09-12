class Sentence1sController < ApplicationController
  
  before_action :set_sentence1, only: [:show, :edit, :update, :destroy]

  def index
    @sentence1 = Sentence1.all
  end

  def new
    if params[:back]
      @sentence1 = Sentence1.new(sentence1_params)
    else
      @sentence1 = Sentence1.new
    end
  end

  def create
    @sentence1 = Sentence1.new(sentence1_params)
    if @sentence1.save
      redirect_to sentence1s_path, notice: "登録を完了しました。"
    else
      render 'new'
    end
  end

  def confirm
    @sentence1 = Sentence1.new(sentence1_params)
    render :new if @sentence1.invalid?
  end

  def show
  end

  def edit
  end

  def update
    if @sentence1.update(sentence1_params)
      redirect_to sentence1s_path, notice: "編集を完了しました。"
    else
      render 'edit'
    end
  end

  def destroy
    @sentence1.destroy
    redirect_to sentence1s_path, notice:"削除を完了しました。"
  end

  private

  def sentence1_params
    params.require(:sentence1).permit(:sentence_top)
  end

  def set_sentence1
    @sentence1 = Sentence1.find(params[:id])
  end


end