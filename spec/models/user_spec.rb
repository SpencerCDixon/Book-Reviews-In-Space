require 'rails_helper'

RSpec.describe User, :type => :model do
  it { should have_valid(:role).when('Astronaut', 'Member') }
  it { should_not have_valid(:role).when('', nil) }
end
