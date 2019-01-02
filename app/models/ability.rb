class Ability
  include CanCan::Ability

  def initialize(user)
    user || User.new
    if user.role == 'admin'
      can :manage, :all 
    elseif user.role == 'player'
      alias_action :create, :read, :update, to: :cru
      can :cru, Team
    elseif user.role == 'club'
      alias_action :create, :read, :update, :delete, to: :crud
      can :crud, Visorium
    end
  end
end
