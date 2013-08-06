class ArticlesController < ApplicationController
  def index
    @articles = Article.published.limit(8)
    @featured = Article.featured.first
  end

  def show
  end
end
