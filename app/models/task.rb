class Task < ApplicationRecord
  belongs_to :user
  has_many :subtasks, dependent: :destroy
  
  validates :title, presence: true
  validates :date, presence: true
end
