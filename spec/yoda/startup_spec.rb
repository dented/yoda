require "spec_helper"

RSpec.describe Yoda::Startup  do

  it 'gets a single startup' do
    # VCR.use_cassette('all_startups') do
    startup = Yoda::Startup.find('mb78dc5mJbU79zHK')

    expect(startup).to be_instance_of(Yoda::Startup)
    expect(startup.name).to eq('AngelHub')
    # end
  end

  it 'gets a page of startups' do
    startups = Yoda::Startup.all

    expect(startups).to be_instance_of(Array)
    expect(startups).not_to be_empty
  end

end
