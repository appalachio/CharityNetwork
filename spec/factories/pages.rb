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
#
# Indexes
#
#  index_pages_on_slug  (slug) UNIQUE
#
FactoryBot.define do
  factory :page do
    title { "MyText" }
    slug { "MyText" }
    subtitle { "MyText" }
    body { nil }
    published_at { "2025-08-10 16:44:43" }
    archived_at { "2025-08-10 16:44:43" }
  end
end
