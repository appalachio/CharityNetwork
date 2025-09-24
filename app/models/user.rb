# == Schema Information
#
# Table name: users
#
#  id                     :uuid             not null, primary key
#  admin                  :boolean          default(FALSE), not null
#  confirmation_sent_at   :datetime
#  confirmation_token     :string
#  confirmed_at           :datetime
#  current_sign_in_at     :datetime
#  current_sign_in_ip     :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  failed_attempts        :integer          default(0), not null
#  last_sign_in_at        :datetime
#  last_sign_in_ip        :string
#  locked_at              :datetime
#  moderator              :boolean          default(FALSE), not null
#  name                   :text             not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  sign_in_count          :integer          default(0), not null
#  slug                   :text             not null
#  unconfirmed_email      :string
#  unlock_token           :string
#  username               :text             not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  charity_id             :uuid
#
# Indexes
#
#  index_users_on_charity_id            (charity_id)
#  index_users_on_confirmation_token    (confirmation_token) UNIQUE
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_name                  (name) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_slug                  (slug) UNIQUE
#  index_users_on_unlock_token          (unlock_token) UNIQUE
#  index_users_on_username              (username) UNIQUE
#
# Foreign Keys
#
#  fk_rails_ca09cb48e6  (charity_id => charities.id)
#
class User < ApplicationRecord
  self.implicit_order_column = "created_at"

  has_rich_text :profile
  has_one_attached :profile_picture
  belongs_to :charity, optional: true
  has_many :donations

  validates :name, :username, :email, presence: true

  # Other devise modules available is: :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable, :timeoutable, :trackable

  # Track and store changes to users
  has_paper_trail

  # Display users by their username
  extend FriendlyId
  friendly_id :username

  # Update the user's slug when the username changes
  def should_generate_new_friendly_id?
    username_changed?
  end
end
