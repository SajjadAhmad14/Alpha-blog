class ArticlesController < ApplicationController
  before_action :find, only:[:show, :edit, :update, :destroy]
  def show

  end

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = 'Article created successfully!'
      redirect_to @article
    else
      render :new
    end
  end

  def edit
    
  end

  def update
    if @article.update(article_params)
      flash[:notice] = 'Article updated successfully!'
      redirect_to @article
    else
      render :edit
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end
  private

  def article_params
    params.require(:article).permit(:title, :description)
  end

  def find
    @article = Article.find(params[:id])
  end
end