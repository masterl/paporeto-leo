class Article < ActiveRecord::Base
  validates :title, :summary, :body, presence: true

  def to_param
    "#{id} #{title}".parameterize
  end
end
