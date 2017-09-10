class GrandyBooch
  class CI
    class Dotci
      private

      def repo_slug
        # ?
      end

      def repo_url
        env.fetch("DOTCI_INSTALL_PACKAGES_GIT_CLONE_URL") do
          env.fetch("DOTCI_DOCKER_COMPOSE_GIT_CLONE_URL") do
            env["GIT_URL"]
          end
        end
      end

      def pull_request_number
        env["DOTCI_PULL_REQUEST"]
      end
    end
  end
end
