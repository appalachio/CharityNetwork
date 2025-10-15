# == Schema Information
#
# Table name: charities
#
#  id                  :uuid             not null, primary key
#  archived_at         :datetime
#  contact_email       :text
#  name                :text             not null
#  needs               :text             default([]), is an Array
#  registration_number :text
#  slug                :text             not null
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
# Indexes
#
#  index_charities_on_name  (name) UNIQUE
#  index_charities_on_slug  (slug) UNIQUE
#
class Charity < ApplicationRecord
  self.implicit_order_column = "created_at"

  has_rich_text :description
  has_one_attached :logo
  has_many :users
  has_many :donations, inverse_of: "claimed_by" # Donations this charity has claimed

  validates :name, :registration_number, presence: true
  validates :name, uniqueness: true

  # Track and store changes to charities
  has_paper_trail

  # Display charities by their name
  extend FriendlyId
  friendly_id :name

  def should_generate_new_friendly_id?
    name_changed?
  end
end
