class GrandyBooch
  class CI
    class Travis
      private

      def repo_slug
        env["TRAVIS_REPO_SLUG"]
      end

      def repo_url
        # ?
      end

      def pull_request_number
        env["TRAVIS_PULL_REQUEST"]
      end
    end
  end
end
