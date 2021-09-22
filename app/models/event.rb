class Event < ApplicationRecord
  validates :name :address :price :rating :phone :image_url :url :user_id, presence: true

  belongs_to :user
end