class ArticleController < ApplicationController
  def index
    @article = Article.all
  end

  def create
    @article = Aritcle.new(article_params)
    @article.save
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def show
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    redirect_to article_path(@article.id)

  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to article_index_path
  end

private

  def article_params
    params.require(:article).permit(:title, :content)
  end

end
