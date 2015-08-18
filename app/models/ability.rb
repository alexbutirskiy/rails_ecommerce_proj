class Ability
  include CanCan::Ability
 
  def initialize(user)
    puts user  
    user ||= User.new # guest user
    if user.role == 'admin'
        can :manage, :all
    else
        can :read, :all
    end
    
  end
end