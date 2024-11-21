class NovelsController < ApplicationController
  
  def index
    @novels = Novel.all
  end

  def new
    @novel = Novel.new
  end

  def create
    Novel.create(novel_params)
    redirect_to '/'
  end

  def destroy
    novel = Novel.find(params[:id])
    novel.destroy
    redirect_to root_path
  end

  def edit
    @novel = Novel.find(params[:id])
  end

  def update
    novel = Novel.find(params[:id])
    novel.update(novel_params)
    redirect_to root_path
  end

  def show
    @novel = Novel.find(params[:id])
    @novel_title = @novel.title
  end

  private
  def novel_params
    params.require(:novel).permit(:title, :main_text)
  end

end
