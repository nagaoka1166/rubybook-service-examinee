class Post < ApplicationRecord
    belongs_to :researcher
    belongs_to :user
end
