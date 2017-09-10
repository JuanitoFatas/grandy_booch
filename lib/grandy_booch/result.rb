class GrandyBooch
  class Result
    def initialize(env, ci_type)
      @env = env
      @ci_type = ci_type
    end

    def ci
      @_ci ||= CI.find_by(type: ci_type).new(env)
    end

    def repo
      Repo.new(attrs: ci.repo_attrs)
    end

    def pull_request
      PullRequest.new(attrs: ci.pull_request_attrs)
    end

    private
    attr_reader :env, :ci_type
  end
end
