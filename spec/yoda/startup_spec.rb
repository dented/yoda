require "spec_helper"

RSpec.describe Yoda::Startup  do

  it 'raise not found error when looking for a single startup' do
    expect { Yoda::Startup.find('1234567') }.to raise_error(Yoda::StartupNotFound)
  end

  it 'gets a single startup' do
    id = 'mb78dc5mJbU79zHK'
    startup = Yoda::Startup.find(id)

    # binding.pry
    expect(startup).to be_instance_of(Yoda::Startup)
    expect(startup.name).to eq('AngelHub')
    expect(startup.id).to eq(id)
  end

  it 'gets a page of startups' do
    startups = Yoda::Startup.all

    expect(startups).to be_instance_of(Array)
    expect(startups).not_to be_empty
  end

end
