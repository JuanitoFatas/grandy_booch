class GrandyBooch
  class CI
    class Bitrise < Base
      private

      def repo_uri
        @_repo_uri ||= RepoURI.new(env["GIT_REPOSITORY_URL"])
      end

      def repo_slug
        repo_uri.slug
      end

      def repo_url
        repo_uri.url
      end

      def pull_request_number
        env["BITRISE_PULL_REQUEST"]
      end
    end
  end
end
