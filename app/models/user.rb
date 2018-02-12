# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  user_email :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  before_save {self.user_email = user_email.downcase}

  Email_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :user_email, presence: true,
                    format: {with: Email_REGEX},
                    uniqueness: {case_sensitive: false}

  validates :first_name, presence: true
  validates :last_name,  presence: true
end
