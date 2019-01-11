class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.role == 'admin'
      can :manage, :all 
    end
    
    if user.role == 'player'
      alias_action :create, :read, :update, :destroy, to: :crud
      can :crud, Team
      can :crud, Technique
      can :crud, Contractual
      can :read, Visorium
      can :assist, Visorium
      can :destroy_assist, Visorium
      can :my_assist, Visorium
      cannot :index, VisoriaController
      cannot :new, VisoriaController
      cannot :update, VisoriaController
      cannot :destroy, VisoriaController
      cannot :create, VisoriaController
    end
    
    if user.role == 'club'
      alias_action :create, :read, :update, :delete, to: :crud
      can :crud, Visorium
      can :crud, Viewer
      cannot :assist, Visorium
      cannot :destroy_assist, VisoriaController
      cannot :my_assist, VisoriaController
    end
  end
end
