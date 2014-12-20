require 'rails_helper'

RSpec.describe Book, :type => :model do
  it { should have_valid(:title).when('Title', 'Seasons of Life', 'a') }
  it { should_not have_valid(:title).when('', nil) }

  it { should have_valid(:description).when('This is a description of a book') }
  it { should_not have_valid(:description).when('', nil) }

  it { should have_valid(:URL).when('http://www.example.com', 'www.example.com') }
  it { should_not have_valid(:URL).when('', nil, 'asdfkljsdf') }
end
