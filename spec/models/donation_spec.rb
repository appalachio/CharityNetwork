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
require 'rails_helper'

RSpec.describe Donation do
  pending "add some examples to (or delete) #{__FILE__}"
end
