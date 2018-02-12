class User < ApplicationRecord
  before_save {self.email = email.downcase}

  Email_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
                    format: {with: Email_REGEX},
                    uniqueness: {case_sensitive: false}

  validates :first_name, presence: true
  validates :last_name,  presence: true
end
