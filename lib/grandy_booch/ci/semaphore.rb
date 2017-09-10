class GrandyBooch
  class CI
    class Semaphore
      private

      def repo_slug
        env["SEMAPHORE_REPO_SLUG"]
      end

      def repo_url
        # ?
      end

      def pull_request_number
        env["PULL_REQUEST_NUMBER"]
      end
    end
  end
end
