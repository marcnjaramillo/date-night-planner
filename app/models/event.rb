class Event < ApplicationRecord
  validates :user_id, uniqueness: {scope: :name}
  belongs_to :user
end
