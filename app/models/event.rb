class Event < ApplicationRecord
  validates :user_id, uniqueness: {scope: :name}
  belongs_to :user

  default_scope { order(created_at: :desc)}
end
