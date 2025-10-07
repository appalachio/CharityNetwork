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
require 'rails_helper'

RSpec.describe Donation do
  pending "add some examples to (or delete) #{__FILE__}"
end
