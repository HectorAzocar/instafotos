class Post < ApplicationRecord
    validates :image, presence: :true
    validates :content, presence: :true, length: {minimun:1, maximun:200}
end
