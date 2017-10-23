module Yoda
  # Namespace for errors.
  module Errors
    # Base class for all errors.
    class Error                     < StandardError; end

    class StartupNotFound           < StandardError; end
  end
end