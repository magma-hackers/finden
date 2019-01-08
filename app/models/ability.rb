class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.role == 'admin'
      can :manage, :all 
    end
    
    if user.role == 'player'
      alias_action :create, :read, :update, :delete, to: :crud
      can :crud, Team
      can :crud, Technique
      can :crud, Contractual
      can :read, Visorium
    end
    
    if user.role == 'club'
      alias_action :create, :read, :update, :delete, to: :crud
      can :crud, Visorium
      can :crud, Viewer
    end
  end
end
