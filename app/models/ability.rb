class Ability
  include CanCan::Ability

    def initialize(user)
     user ||= User.new
         if user.role == "manager"
           can :manage, :all
          elsif user.role == "seller"
           alias_action :create, :read, :update, :to => :cru
           can :read, Libro
          end
            if user.activo=="no"
            cannot :read, Libro 
          end   
         end
        
  end
