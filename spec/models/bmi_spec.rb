require "rails_helper"

RSpec.describe Bmi,  type: :model do
  it { should belong_to(:user) }
end

RSpec.describe Bmi,  type: :model do
  it { should have_db_column(:user_id) }
  it { should have_db_column(:height) }
  it { should have_db_column(:mass) }
end
