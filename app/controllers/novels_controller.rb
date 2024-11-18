class NovelsController < ApplicationController
  
  def index
    @novels = Novel.all
  end

  def new
    @novel = Novel.new
    @chapter = Chapter.new
    @content = Content.new
  end

end
