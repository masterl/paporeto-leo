class Article < ActiveRecord::Base
  validates :title, :summary, :body, :category, presence: true

  uploads_one :picture, thumb: [100,100], regular: [300, 200]

  belongs_to :category

  paginates_per 15

  def to_param
    "#{id} #{title}".parameterize
  end
end
