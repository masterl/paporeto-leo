class Category < ActiveRecord::Base
  has_many :articles

  paginates_per 10

  def simple
    @slug ||= name.parameterize
  end
end
