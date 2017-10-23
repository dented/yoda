require "spec_helper"

RSpec.describe Yoda::Campaign  do

  it 'gets a single campaign' do
    # startup = Yoda::Campaign.find('mb78dc5mJbU79zHK')

    # expect(startup).to be_instance_of(Yoda::Startup)
    # expect(startup.name).to eq('AngelHub')
  end

  it 'gets a page of campaigns' do
    campaigns = Yoda::Campaign.all

    expect(campaigns).to be_instance_of(Array)
    expect(campaigns).to be_empty
  end

end
