class Post < ApplicationRecord
  extend FriendlyId

  friendly_id :title, use: [:slugged]
  has_many :comments, dependent: :destroy

  def should_generate_new_friendly_id?
    title_changed? || slug.blank?
  end
end
