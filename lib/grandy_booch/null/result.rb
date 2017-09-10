class GrandyBooch
  class Null
    class Result
      def initialize(env, ci_type)
        @env = env
        @ci_type = ci_type
      end

      def ci
        Null::CI.new
      end

      def repo
        Null::Repo.new
      end

      def pull_request
        Null::PullRequest.new
      end

      private
      attr_reader :env, :ci_type
    end
  end
end
