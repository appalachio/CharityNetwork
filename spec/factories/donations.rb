# == Schema Information
#
# Table name: donations
#
#  id          :uuid             not null, primary key
#  archived_at :datetime
#  claimed_at  :datetime
#  condition   :text
#  name        :text             not null
#  quantity    :integer          not null
#  slug        :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :uuid
#
# Indexes
#
#  index_donations_on_slug     (slug) UNIQUE
#  index_donations_on_user_id  (user_id)
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
