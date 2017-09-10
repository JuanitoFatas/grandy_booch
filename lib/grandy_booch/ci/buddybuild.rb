class GrandyBooch
  class CI
    class Buddybuild
      private

      def repo_slug
        env["BUDDYBUILD_REPO_SLUG"]
      end

      def repo_url
        # ?
      end

      def pull_request_number
        env["BUDDYBUILD_PULL_REQUEST"]
      end
    end
  end
end
