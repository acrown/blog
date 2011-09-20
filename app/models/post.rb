class Post < ActiveRecord::Base
  acts_as_commentable
  acts_as_taggable_on :tags

  has_many :comments, :dependent => :destroy

  validates :name, :presence => true
  validates :content, :presence => true
end

