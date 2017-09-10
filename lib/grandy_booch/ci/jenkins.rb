class GrandyBooch
  class CI
    class Jenkins
      private

      def repo_slug
        # ?
      end

      def repo_url
        # ?
      end

      def pull_request_number
        env.fetch("ghprbPullId") do
          env.fetch("CHANGE_ID") do
            env["gitlabMergeRequestId"]
          end
        end
      end
    end
  end
end
