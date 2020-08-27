module Samurai
  class Ability
  include CanCan::Ability
  class_attribute :abilities
  self.abilities = Set.new
  # Allows us to go beyond the standard cancan initialize method which makes
  # it difficult for engines to modify the default {Ability} of an
  # application. The registered ability should behave properly as a
  # stand-alone class
  # and therefore should be easy to test in isolation.
  # @param ability [Ability] a class that includes the CanCan::Ability module.
  def self.register_ability(ability)
  self.abilities.add(ability)
  end
  # Remove a registered ability.
  # @param ability [Ability] a class that includes the CanCan::Ability module.
  def self.remove_ability(ability)
  self.abilities.delete(ability)
  end
  def initialize(user)
  Rails.logger.info self.abilities.inspect
  if user.admin?
  can :manage, :all
  else
  can :read, :dashboard
  end
  # Include any abilities registered by extensions, etc.
  Ability.abilities.each do |klass|
  ability = klass.send(:new, user)
  @rules = rules + ability.send(:rules)
  end
  end
  end
  end