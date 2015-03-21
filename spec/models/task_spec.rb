require 'rails_helper'

describe Task do
  it { should validate_presence_of(:name) }

  # it { should validate_length_of(:name).is_at_least(1) }
  # it { should validate_length_of(:name).is_at_most(255) }
end
