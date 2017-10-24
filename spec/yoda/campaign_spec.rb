require "spec_helper"

RSpec.describe Yoda::Campaign  do

  it 'raise not found error when looking for a single campaign' do
    expect { Yoda::Campaign.find('mb78dc5mJbU79zHK') }.to raise_error(Yoda::CampaignNotFound)
  end

  it 'gets a page of campaigns' do
    campaigns = Yoda::Campaign.all

    expect(campaigns).to be_instance_of(Array)
    expect(campaigns).to be_empty
  end

end
