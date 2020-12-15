class Article < ApplicationRecord
    validates :title, presence: true
    validates :summary, presence: true, length: { minimum: 10 }
end
