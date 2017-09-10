class GrandyBooch
  class CI
    class Drone
      private

      def repo_slug
        env["DRONE_REPO"]
      end

      def repo_url
        # ?
      end

      def pull_request_number
        env["DRONE_PULL_REQUEST"]
      end
    end
  end
end
