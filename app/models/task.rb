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

# == Schema Information
#
# Table name: tasks
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  complete   :boolean          default("0")
#
