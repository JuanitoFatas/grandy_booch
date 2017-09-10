class GrandyBooch
  class CI
    class RepoURI
      def initialize(url)
        @url = url
      end

      def slug
      end

      def url
      end

      def platform
        case url
        when /github.com/i then :github
        when /gitlab/i then :gitlab
        when /bitbucket/i then :bitbucket
        else
        end
      end

      private
      attr_reader :url
    end
  end
end
