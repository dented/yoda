module Yoda
  # Namespace for errors.
  module Errors
    # Base class for all errors.
    class Error                     < StandardError; end

    class StartupNotFound           < StandardError; end
    class CampaignNotFound          < StandardError; end
    class UserNotFound              < StandardError; end
  end
end