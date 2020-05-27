require 'rails-helper'

describe Survey do
  it { should have_many(:questions) }
end