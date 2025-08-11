# == Schema Information
#
# Table name: donations
#
#  id           :uuid             not null, primary key
#  archived_at  :datetime
#  claimed_at   :datetime
#  condition    :text
#  name         :text             not null
#  picked_up_at :datetime
#  quantity     :integer          not null
#  slug         :text             not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_donations_on_slug  (slug) UNIQUE
#
class Donation < ApplicationRecord
  self.implicit_order_column = "created_at"

  has_rich_text :description
  has_many_attached :pictures

  validates :name, :quantity, presence: true

  # Track and store changes to donations
  has_paper_trail

  # Display donations by their name
  extend FriendlyId
  friendly_id :name
end
