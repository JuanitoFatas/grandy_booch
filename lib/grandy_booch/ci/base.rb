class GrandyBooch
  class CI
    class Base
      def initialize(env)
        @env = env
      end

      def repo_attrs
        {
          "slug" => repo_slug
          "url" => repo_url
        }
      end

      def pull_request_attrs
        {
          "number" => pull_request_number
        }
      end

      private
      attr_reader :env
    end
  end
end
