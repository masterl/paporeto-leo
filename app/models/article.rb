class Article < ActiveRecord::Base
  validates :title, :summary, :body, :category, presence: true

  belongs_to :category

  def to_param
    "#{id} #{title}".parameterize
  end
end
