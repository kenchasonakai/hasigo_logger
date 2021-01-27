class User < ApplicationRecord
  validates :line_user_id, presence: true
  has_many :logs
end
