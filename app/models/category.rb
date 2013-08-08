class Category < ActiveRecord::Base
  has_many :articles

  paginates_per 10

  def simple
    @slug ||= name.parameterize
  end

  def featured_article
    articles.featured.first
  end

  def common_articles
    articles.where(featured: false)
  end

end
