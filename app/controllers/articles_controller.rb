class ArticlesController < ApplicationController
  def index
    @category = Category.find(params[:category_id])

    @articles = @category.articles.published.where(featured: false).limit(8)
    @featured = @category.articles.featured.first
  end

  def show
    @article = Article.find(params[:id])
    @relateds = @article.category.articles.where.not(id: @article.id).limit(3)
  end
end
