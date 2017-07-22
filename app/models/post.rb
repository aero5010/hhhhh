class Post < ActiveRecord::Base
    belongs_to :users
    has_many :comments
    has_and_belongs_to_many :hashtags
end
