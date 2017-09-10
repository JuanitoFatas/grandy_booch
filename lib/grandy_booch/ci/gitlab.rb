class GrandyBooch
  class CI
    class Gitlab
      private

      def repo_slug
        env["CI_PROJECT_ID"]
      end

      def repo_url
        # ?
      end

      def pull_request_number
        env["CI_MERGE_REQUEST_ID"]
      end
    end
  end
end
