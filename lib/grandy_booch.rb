# frozen_string_literal: true

require_relative "grandy_booch/version"
require_relative "grandy_booch/abilities/find_ci_type"

class GrandyBooch
  def initialize(env)
    @env = env
  end

  def think
    if ci_type == :not_found
      NoResult.new(env, ci_type)
    else
      Result.new(env, ci_type)
    end
  end

  private
  attr_reader :env

  def ci_type
    @_ci_type ||= Abilities::FindCIType.new(env).run
  end
end
