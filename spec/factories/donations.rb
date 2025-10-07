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
FactoryBot.define do
  factory :donation do
    name { "MyText" }
    slug { "MyText" }
    quantity { 1 }
    description { nil }
    condition { "MyText" }
    pictures { nil }
    claimed_at { "2025-08-11 18:59:06" }
    picked_up_at { "2025-08-11 18:59:06" }
    archived_at { "2025-08-11 18:59:06" }
  end
end
