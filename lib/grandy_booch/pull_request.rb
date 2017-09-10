class GrandyBooch
  class PullRequest
    def initialize(attrs)
      @attrs = attrs
    end

    def number
      attrs[:number]
    end

    def platform
      attrs[:platform]
    end

    def present?
      true
    end
  end
end
