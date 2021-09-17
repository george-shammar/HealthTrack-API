class User < ApplicationRecord
  has_many :trackers

  validates_presence_of :username
end
