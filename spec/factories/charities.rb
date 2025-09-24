# == Schema Information
#
# Table name: charities
#
#  id                  :uuid             not null, primary key
#  archived_at         :datetime
#  contact_info        :text
#  name                :text             not null
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
FactoryBot.define do
  factory :charity do
    name { "MyText" }
    slug { "MyText" }
    description { nil }
    logo { nil }
    contact_info { "MyText" }
    archived_at { "2025-08-11 17:54:39" }
  end
end
