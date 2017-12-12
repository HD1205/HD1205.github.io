class Comment < ActiveRecord::Base
    belongs_to :freepost
    belongs_to :score
    belongs_to :user
end
