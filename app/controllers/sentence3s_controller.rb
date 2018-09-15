class Sentence3sController < ApplicationController
  
  before_action :set_sentence3, only: [:show, :edit, :update, :destroy]

  def index
    @sentence3 = Sentence3.all
  end

  def new
    if params[:back]
      @sentence3 = Sentence3.new(sentence3_params)
    else
      @sentence3 = Sentence3.new
    end
  end

  def create
    @sentence3 = Sentence3.new(sentence3_params)
    if @sentence3.save
      redirect_to sentence1s_path, notice: "登録を完了しました。"
    else
      render 'new'
    end
  end

  def confirm
    @sentence3 = Sentence3.new(sentence3_params)
    render :new if @sentence3.invalid?
  end

  def show
  end

  def edit
  end

  def update
    if @sentence3.update(sentence3_params)
      redirect_to sentence1s_path, notice: "編集を完了しました。"
    else
      render 'edit'
    end
  end

  def destroy
    @sentence3.destroy
    redirect_to sentence1s_path, notice:"削除を完了しました。"
  end

  private

  def sentence3_params
    params.require(:sentence3).permit(:sentence_last)
  end

  def set_sentence3
    @sentence3 = Sentence3.find(params[:id])
  end


end
