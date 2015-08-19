class Ability
  include CanCan::Ability
 
  def initialize(user)
    user ||= User.new # guest user
    if user.admin?
        can :manage, :all
    else
        can :index, Product
        if user.user?
          can :manage, :cart
          can :read, Product
        end
    end
    
  end
end