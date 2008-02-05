dependency 'permalinker'
class Article < DataMapper::Base
  include Permalinker
  property :title, :string, :lazy => false
  property :body, :text, :lazy => false
  
  property :created_at, :datetime
  property :updated_at, :datetime

  property :published_at, :datetime
  property :draft, :boolean
  property :user_id, :integer

  permalinker :title
  
  has_many :comments
  belongs_to :user
  
  validates_presence_of :title
  
end

