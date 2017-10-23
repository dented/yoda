module Yoda
  class Campaign < Base

    def self.fetch(url, options = {})
      response = get(url, options)

      if response.response.is_a?(Net::HTTPNotFound)
        raise CampaignNotFound
      else
        parsed_response = JSON.parse(response.body)
        parsed_response['data']
      end
    end

    def self.find(id)
      response = fetch("/campaigns/#{id}")
      new(response['campaign'])
    end

    def self.all(options={})
      response = fetch("/campaigns", query: options)

      response['campaigns'].map { |attr| new(attr) }
    end

  end
end