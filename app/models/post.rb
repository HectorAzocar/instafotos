class Post < ApplicationRecord
    validates :image, presence: :true
    validates :content, presence: :true, length: {minimum:1, maximum:200}
end
