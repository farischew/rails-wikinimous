
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
    @article = set_article
  end

  def update
    @article = set_article
    @article.update(article_params)

    redirect_to articles_path
  end

  def destroy
    @article = set_article
    @article.destroy

    redirect_to articles_path
  end

  private

  def set_article
    @article = Article.find(params['id'])
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
