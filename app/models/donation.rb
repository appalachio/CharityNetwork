# == Schema Information
#
# Table name: donations
#
#  id            :uuid             not null, primary key
#  archived_at   :datetime
#  category      :text             not null
#  claimed_at    :datetime
#  condition     :text
#  name          :text             not null
#  quantity      :integer          not null
#  slug          :text             not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  claimed_by_id :uuid
#  user_id       :uuid
#
# Indexes
#
#  index_donations_on_claimed_by_id  (claimed_by_id)
#  index_donations_on_slug           (slug) UNIQUE
#  index_donations_on_user_id        (user_id)
#
# Foreign Keys
#
#  fk_rails_6aeba1396a  (claimed_by_id => charities.id)
#
class Donation < ApplicationRecord
  self.implicit_order_column = "created_at"

  has_rich_text :description
  has_many_attached :pictures
  belongs_to :user
  belongs_to :claimed_by, class_name: "Charity", foreign_key: :claimed_by_id, optional: true

  validates :name, :quantity, presence: true

  # Track and store changes to donations
  has_paper_trail

  # Display donations by their name
  extend FriendlyId
  friendly_id :name

  def should_generate_new_friendly_id?
    name_changed?
  end
end
