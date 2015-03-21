class Task < ActiveRecord::Base
  belongs_to :user

  validates :name, presence: true

  scope :complete, lambda {
    where(complete: true)
  }

  scope :incomplete, lambda {
    where(complete: false)
  }
end
