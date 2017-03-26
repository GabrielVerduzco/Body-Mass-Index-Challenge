require "rails_helper"

RSpec.describe Bmi,  type: :model do
  it { should belong_to(:user) }
end
