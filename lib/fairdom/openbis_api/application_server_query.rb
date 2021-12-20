module Fairdom
  module OpenbisApi
    class ApplicationServerQuery < OpenbisQuery
      attr_reader :as_endpoint

      def initialize(as_endpoint, token)
        super(token)
        @as_endpoint = as_endpoint
      end

      def initialize(as_endpoint, token, is_test)
        super(token, is_test)
        @as_endpoint = as_endpoint
      end

      def root_command_options
        " -endpoints '{%as%:%#{as_endpoint}%\,%sessionToken%:%#{token}%,%is_test%:%#{is_test}%}'"
      end
    end
  end
end
