# == Schema Information
#
# Table name: pages
#
#  id           :uuid             not null, primary key
#  archived_at  :datetime
#  published_at :datetime
#  slug         :text             not null
#  subtitle     :text
#  title        :text             not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :uuid
#
# Indexes
#
#  index_pages_on_slug     (slug) UNIQUE
#  index_pages_on_user_id  (user_id)
#
class Page < ApplicationRecord
  self.implicit_order_column = "published_at"

  has_rich_text :body
  belongs_to :user

  validates :title, presence: true

  # Track and store changes to pages
  has_paper_trail

  # Display pages by their title (and maybe subtitle)
  extend FriendlyId
  friendly_id :slug_candidates

  # Try to use the page's title for slug first, if thats nonunique use title and subtitle, then finally append a UUID
  def slug_candidates
    [
      :title,
      [ :title, :subtitle ]
    ]
  end

  def should_generate_new_friendly_id?
    title_changed? || subtitle_changed?
  end
end
