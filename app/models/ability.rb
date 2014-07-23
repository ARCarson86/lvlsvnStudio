class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.email != nil
        can :manage, :all
    end
  end
end
