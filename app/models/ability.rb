class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.admin?
      can :manage, :all
    elsif user.curator?
      can :index, [Curation]
      can :manage, [Person] do |person|
        person.curator? user
      end
      can :manage, [Photo] do |photo|
        photo.person.curator? user
      end
    else
      can :read, :all
    end
  end
end
