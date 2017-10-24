require "spec_helper"

RSpec.describe Yoda::User  do

  it 'raise not found error when looking for a single user' do
    expect { Yoda::User.find('1234567') }.to raise_error(Yoda::UserNotFound)
  end

  it 'gets a page of users' do
    users = Yoda::User.all

    expect(users).to be_instance_of(Array)
    expect(users).not_to be_empty
  end

end
