class GrandyBooch
  class Repo
    def initialize(attrs)
      @attrs = attrs
    end

    def slug
      attrs[:slug]
    end

    def url
      attrs[:url]
    end

    private
    attr_reader :attrs
  end
end
