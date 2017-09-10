require_relative "ci/base"

require_relative "ci/bitrise"
require_relative "ci/buddybuild"
require_relative "ci/buildkite"
require_relative "ci/circle"
require_relative "ci/dotci"
require_relative "ci/drone"
require_relative "ci/gitlab"
require_relative "ci/jenkins"
require_relative "ci/semaphore"
require_relative "ci/surf"
require_relative "ci/teamcity"
require_relative "ci/travis"
require_relative "ci/visual_studio_team_services"
require_relative "ci/xcode_server"

class GrandyBooch
  class CI
    def self.find_by(type:)
      new(type).find
    end

    def initialize(type)
      @type = type
    end

    def find
      AVAILABLE_CIS[type]
    end

    private
    attr_reader :type

    AVAILABLE_CIS = {
      bitrise: Bitrise,
      buddybuild: Buddybuild,
      buildkite: Buildkite,
      circle: Circle,
      dotci: Dotci,
      drone: Drone,
      gitlab: Gitlab,
      jenkins: Jenkins,
      semaphore: Semaphore,
      surf: Surf,
      teamcity: Teamcity,
      travis: Travis,
      visual_studio_team_services: VisualStudioTeamServices,
      xcode_server: XcodeServer
    }
  end
end
