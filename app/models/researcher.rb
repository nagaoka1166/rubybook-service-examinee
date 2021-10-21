class Researcher < ApplicationRecord
    belongs_to :user
    has_many :posts
end
