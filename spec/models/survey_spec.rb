require 'rails_helper'

describe Survey do
  it { should have_many(:questions) }
  it { should validate_length_of(:topic).is_at_most(100)}
  it { should validate_presence_of :topic }
  
  it("titleizes the topic of a survey") do
    survey = Survey.create({topic: "pizza is lyfe"})
    expect(survey.topic()).to(eq("Pizza Is Lyfe"))
  end
end