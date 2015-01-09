class Article < ActiveRecord::Base
    belongs_to :user
    has_many :article_categories
    has_many :categories, through: :article_categories
    
    validates_presence_of :title
    validates_presence_of :content
    validates_presence_of :categories
end
