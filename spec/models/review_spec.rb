require 'rails_helper'

RSpec.describe Review, :type => :model do
  it { should have_valid(:description).when('Title', 'Seasons of Life', 'a') }
  it { should_not have_valid(:description).when('', nil) }
end
