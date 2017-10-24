module Yoda
  class Startup < Base

    def self.fetch(url, options = {})
      response = get(url, options)

      if response.response.is_a?(Net::HTTPNotFound)
        raise Yoda::StartupNotFound
      else
        parsed_response = JSON.parse(response.body)
        if parsed_response['data'] == nil
          raise Yoda::StartupNotFound
        else
          parsed_response['data']
        end
      end

    end

    def self.find(id)
      response = fetch("/startups/#{id}")
      new(response['startup'])
    end

    def self.all(options={})
      response = fetch("/startups", query: options)

      response['startups'].map { |attr| new(attr) }
    end

  end
end