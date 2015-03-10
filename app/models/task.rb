class Task < ActiveRecord::Base
  belongs_to :user

  validates :item, presence: true
end
