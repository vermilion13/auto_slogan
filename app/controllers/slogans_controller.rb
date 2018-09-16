class SlogansController < ApplicationController
  
  before_action :set_slogan, only: [:show, :edit, :update, :destroy]

  def index
    @slogan = Slogan.all
#    @favorite = Favorite.group("slogan_id").count #没：ハッシュ化→ソート→eachdoは手間
#    @favorite_count = Favorite.where(slogan_id: @slogan.find_by(params[:id])).count #没：これだとslogan.idを取得出来ない
  end

  def new
    @rand_top = Sentence1.order("RANDOM()").limit(1)
    @rand_center = Sentence2.order("RANDOM()").limit(1)
    @rand_last = Sentence3.order("RANDOM()").limit(1)
    
    if params[:back]
      @slogan = Slogan.new(slogan_params)
    else
      @slogan = Slogan.new
    end
  end

  def create
    @slogan = Slogan.new(slogan_params)
    @slogan.user_id = current_user.id 
    if @slogan.save
      redirect_to slogans_path, notice: "登録を完了しました。"
    else
      render 'new'
    end
  end

  def confirm
    @slogan = Slogan.new(slogan_params)
    render :new if @slogan.invalid?
  end

  def show
    @favorite = current_user.favorites.find_by(slogan_id: @slogan.id)
  end

  def edit
  end

  def update
    if @slogan.update(slogan_params)
      redirect_to slogans_path, notice: "編集を完了しました。"
    else
      render 'edit'
    end
  end

  def destroy
    @slogan.destroy
    redirect_to slogans_path, notice:"削除を完了しました。"
  end

  private

  def slogan_params
    params.require(:slogan).permit(:slogan_text)
  end

  def set_slogan
    @slogan = Slogan.find(params[:id])
  end


end