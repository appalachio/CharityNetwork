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
#  user_id      :uuid
#
# Indexes
#
#  index_pages_on_slug     (slug) UNIQUE
#  index_pages_on_user_id  (user_id)
#
require 'rails_helper'

RSpec.describe Page do
  pending "add some examples to (or delete) #{__FILE__}"
end
