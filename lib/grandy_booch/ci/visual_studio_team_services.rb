class GrandyBooch
  class CI
    class VisualStudioTeamService
      private

      def repo_slug
        # ?
      end

      def repo_url
        env["BUILD_REPOSITORY_URI"]
      end

      def pull_request_number
        # ?
      end
    end
  end
end
