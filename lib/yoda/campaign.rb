module Yoda
  class Campaign < Base

    def self.fetch(url, options = {})
      response = get(url, options)

      if response.response.is_a?(Net::HTTPNotFound)
        raise Yoda::CampaignNotFound
      else
        parsed_response = JSON.parse(response.body)
        if parsed_response['data'] == nil
          raise Yoda::CampaignNotFound
        else
          parsed_response['data']
        end
      end
    end

    def self.find(id)
      response = fetch("/campaigns/#{id}")
      new(response)
    end

    def self.all(options={})
      response = fetch("/campaigns", query: options)

      response['campaigns'].map { |attr| new(attr) }
    end

  end
end