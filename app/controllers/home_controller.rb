class HomeController < ApplicationController
  def index
    @featured = Article.where(featured_at_home: true).first
  end
end
