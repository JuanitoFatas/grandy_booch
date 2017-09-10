class GrandyBooch
  class CI
    class Surf
      private

      def repo_slug
        env["SURF_NWO"]
      end

      def repo_url
        env["SURF_REPO"]
      end

      def pull_request_number
        env["SURF_PR_NUM"]
      end
    end
  end
end
