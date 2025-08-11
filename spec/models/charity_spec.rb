# == Schema Information
#
# Table name: charities
#
#  id           :uuid             not null, primary key
#  archived_at  :datetime
#  contact_info :text
#  name         :text             not null
#  slug         :text             not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_charities_on_name  (name) UNIQUE
#  index_charities_on_slug  (slug) UNIQUE
#
require 'rails_helper'

RSpec.describe Charity do
  pending "add some examples to (or delete) #{__FILE__}"
end
