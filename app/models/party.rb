class Party < ApplicationRecord

  has_many :users
  has_many :tournaments, dependent: :destroy

end
