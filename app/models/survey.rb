class Survey < ApplicationRecord
  has_many :questions, dependent: :destroy

  validates :topic, presence: true
  validates_length_of :topic, maximum: 100
end

