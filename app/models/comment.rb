class Comment < ApplicationRecord
  belongs_to :post
  # created parent comment association
  belongs_to :parent_comment, class_name: "Comment", optional:true
  # replied which are the child comments
  has_many :replies, class_name: "Comment", foreign_key: :parent_comment_id, dependent: :destroy
end
