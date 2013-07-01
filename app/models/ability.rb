class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.admin?
      can :manage, :all
    elsif user.curator?
      can :read, [Person]
      can :manage, [Person] do |person|
        person.curator? user
      end
      can :manage, [Photo] do |photo|
        photo.person.curator? user
      end
      can :manage, [Transaction] do |transaction|
        transaction.person.curator? user
      end
    else
      can :read, [Person, Post]
    end
  end
end
