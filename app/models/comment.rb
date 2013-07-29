class Comment < ActiveRecord::Base
  # attr_accessible :title, :body

  belongs_to :link

  validates_presence_of :text, :link
end
