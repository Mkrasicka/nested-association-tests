class Comment < ApplicationRecord
  belongs_to :post
  # belongs_to :user
  # created parent comment association
  belongs_to :parent_comment, class_name: "Comment", optional:true
  # replied which are the child comments
  has_many :comments, class_name: "Comment", foreign_key: :parent_comment_id, dependent: :destroy

  validates :commentary, presence: true
end
