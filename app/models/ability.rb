class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.admin?
      can :manage, :all
    elsif user.curator?
      can :manage, [Person] do |person|
        person.curator? user
      end
    else
      can :read, :all
    end
  end
end
