

module Fairdom
  module OpenbisApi
    class DataStoreQuery < OpenbisQuery
      attr_reader :dss_endpoint

      def initialize(dss_endpoint, token, is_test = false)
        super(token, is_test)
        @dss_endpoint = dss_endpoint
      end

      def root_command_options
        " -endpoints '{%dss%:%#{dss_endpoint}%\,%sessionToken%:%#{token}%,%is_test%:%#{is_test}%}'"
      end
    end
  end
end
