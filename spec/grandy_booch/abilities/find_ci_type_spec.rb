require "spec_helper"

RSpec.describe GrandyBooch::Abilities::FindCIType do
  it "return :not_found xforx unknown" do
    env = { "APPLE_CI" => "true" }

    result = GrandyBooch::Abilities::FindCIType.new(env).run

    expect(result).to eq :not_found
  end

  it "return :bitrise for BITRISE" do
    env = { "BITRISE_IO" => "true" }

    result = GrandyBooch::Abilities::FindCIType.new(env).run

    expect(result).to eq :bitrise
  end

  it "return :buddybuild for BUDDYBUILD" do
    env = { "BUDDYBUILD_BUILD_ID" => "true" }

    result = GrandyBooch::Abilities::FindCIType.new(env).run

    expect(result).to eq :buddybuild
  end

  it "return :buildkite for BUILDKITE" do
    env = { "BUILDKITE" => "true" }

    result = GrandyBooch::Abilities::FindCIType.new(env).run

    expect(result).to eq :buildkite
  end

  it "return :circle for CIRCLE" do
    env = { "CIRCLE_BUILD_NUM" => "true" }

    result = GrandyBooch::Abilities::FindCIType.new(env).run

    expect(result).to eq :circle
  end

  it "return :dotci for DOTCI" do
    env = { "DOTCI" => "true" }

    result = GrandyBooch::Abilities::FindCIType.new(env).run

    expect(result).to eq :dotci
  end

  it "return :drone for DRONE" do
    env = { "DRONE" => "true" }

    result = GrandyBooch::Abilities::FindCIType.new(env).run

    expect(result).to eq :drone
  end

  it "return :gitlab for GITLAB" do
    env = { "GITLAB_CI" => "true" }

    result = GrandyBooch::Abilities::FindCIType.new(env).run

    expect(result).to eq :gitlab
  end

  it "return :jenkins for JENKINS" do
    env = { "JENKINS_URL" => "true" }

    result = GrandyBooch::Abilities::FindCIType.new(env).run

    expect(result).to eq :jenkins
  end

  it "return :semaphore for SEMAPHORE" do
    env = { "SEMAPHORE" => "true" }

    result = GrandyBooch::Abilities::FindCIType.new(env).run

    expect(result).to eq :semaphore
  end

  it "return :surf for SURF" do
    env = { "SURF_REPO" => "true" }

    result = GrandyBooch::Abilities::FindCIType.new(env).run

    expect(result).to eq :surf
  end

  it "return :teamcity for TEAMCITY" do
    env = { "TEAMCITY_VERSION" => "true" }

    result = GrandyBooch::Abilities::FindCIType.new(env).run

    expect(result).to eq :teamcity
  end

  it "return :travis for TRAVIS" do
    env = { "TRAVIS_REPO_SLUG" => "true" }

    result = GrandyBooch::Abilities::FindCIType.new(env).run

    expect(result).to eq :travis
  end

  it "return :visual_studio_team_services for SYSTEM_TEAMFOUNDATIONCOLLECTIONURI" do
    env = { "SYSTEM_TEAMFOUNDATIONCOLLECTIONURI" => "true" }

    result = GrandyBooch::Abilities::FindCIType.new(env).run

    expect(result).to eq :visual_studio_team_services
  end

  it "return :xcode_server for XCS_BOT_NAME" do
    env = { "XCS_BOT_NAME" => "true" }

    result = GrandyBooch::Abilities::FindCIType.new(env).run

    expect(result).to eq :xcode_server
  end

end
