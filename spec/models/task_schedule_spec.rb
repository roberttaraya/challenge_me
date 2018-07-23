require 'rails_helper'

RSpec.describe TaskSchedule, type: :model do
  it { should belong_to(:user) }
end
