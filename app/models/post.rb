class Post < ActiveRecord::Base
    has_many :comments

    validates :title, presence: true, length: {minimum: 5, maximum: 50}
    validates :body, presence: true, length: {minimum: 25, maximum: 1000}
end
