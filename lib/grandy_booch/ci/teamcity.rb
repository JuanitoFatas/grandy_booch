class GrandyBooch
  class CI
    class Teamcity
      private

      def repo_slug
        env["GITHUB_REPO_SLUG"]
      end

      def repo_url
        env["GITHUB_REPO_URL"]
      end

      def pull_request_number
        env["GITHUB_PULL_REQUEST_ID"]
      end
    end
  end
end
