module Fairdom
  module OpenbisApi
    class Authentication < OpenbisQuery
      attr_reader :as_endpoint, :username, :password

      def initialize(username, password, as_endpoint, is_test = false)
        @username = username
        @password = password
        @as_endpoint = as_endpoint
        @is_test = is_test
      end

      def login
        execute []
      end

      def execute_command(_options)
        java_root_command
      end

      def root_command_options
        " -account '{%username%:%#{username}%\,%password%:%#{password}%}' -endpoints '{%as%:%#{as_endpoint}%,%is_test%:%#{is_test}%}'"
      end
    end
  end
end
