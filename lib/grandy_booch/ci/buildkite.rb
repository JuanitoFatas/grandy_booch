class GrandyBooch
  class CI
    class Buildkite
      private

      def repo_slug
        # ?
      end

      def repo_url
        env["BUILDKITE_REPO"]
      end

      def pull_request_number
        env["BUILDKITE_PULL_REQUEST"]
      end
    end
  end
end
