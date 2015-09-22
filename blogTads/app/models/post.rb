class Post < ActiveRecord::Base 
 validates :title, presence: true
 validates :title, uniqueness: true
 validates :body, presence: true
 
 has_many :comment
end
