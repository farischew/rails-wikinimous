
class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = set_article
  end

  def new
    @article = Article.new
  end

  def create
    article = Article.new(article_params)
    article.save

    redirect_to articles_path
  end

  def edit

  end

  def update

  end

  private

  def set_article
    @article = Article.find(params['id'])
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
