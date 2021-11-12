class Post < ApplicationRecord
    # belongs_to :researcher
    has_many :entries
    belongs_to :user
end
