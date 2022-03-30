class Article < ApplicationRecord # subclass or inherits from ApplicationRecord
    belongs_to :user # an article belongs to a single user
    validates :title, presence: true, length: { minimum: 6, maximum: 100 }
    validates :description, presence: true, length: { minimum: 10, maximum: 300 }
end