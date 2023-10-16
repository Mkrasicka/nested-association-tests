class AddParentCommentToComments < ActiveRecord::Migration[7.0]
  def change
    add_reference :comments, :parent_comment, index: true
    add_foreign_key :comments, :comments, column: :parent_comment_id
  end
end
