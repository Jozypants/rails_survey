class Survey < ApplicationRecord
  has_many :questions, dependent: :destroy

  validates :topic, presence: true
  validates_length_of :topic, maximum: 100

  before_save(:titleize_survey)
  
  private
    def titleize_survey
      self.topic = self.topic.titleize
    end
end

