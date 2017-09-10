# frozen_string_literal: true

class GrandyBooch
  class Abilities
    class FindCIType
      def initialize(env)
        @env = env
      end

      def run
        case
        when keys_text =~ /BITRISE/
          :bitrise
        when keys_text =~ /BUDDYBUILD/
          :buddybuild
        when keys_text =~ /BUILDKITE/
          :buildkite
        when keys_text =~ /CIRCLE/
          :circle
        when keys_text =~ /DOTCI/
          :dotci
        when keys_text =~ /DRONE/
          :drone
        when keys_text =~ /GITLAB/
          :gitlab
        when keys_text =~ /JENKINS/
          :jenkins
        when keys_text =~ /SEMAPHORE/
          :semaphore
        when keys_text =~ /SURF/
          :surf
        when keys_text =~ /TEAMCITY/
          :teamcity
        when keys_text =~ /TRAVIS/
          :travis
        when keys_text =~ /SYSTEM_TEAMFOUNDATIONCOLLECTIONURI/
          :visual_studio_team_services
        when keys_text =~ /XCS_BOT_NAME/
          :xcode_server
        else
          :not_found
        end
      end

      private
      attr_reader :env

      def keys_text
        @_keys ||= env.keys.join(",")
      end
    end
  end
end
