# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    
    user ||= User.new # Guest user
    @current_user = user

    if user.admin?
      can :manage, :all
    elsif user.modrator?
      can :create, Product
      can :update, Product 
      can :destroy, Product
      can :create, Feature
      can :update, Feature
      can :destroy, Feature
      can :create, Employee
      can :update, Employee
      can :destroy, Employee
      can :create, Highlight
      can :update, Highlight
      can :destroy, Highlight
      can :create, History
      can :update, History
      can :destroy, History
      can :update, Contact
      can :update, About
      can :update, Home_box
      can :update, Home_test
      can :update, Home_video
      can :update, Home_site
      can :update, Legal_notice
      can :update, Privacy
      can :update, Term
      can :update, Social
      can :read, :all
    else
      cannot :manage, :all
      can :read, :all
    end
    # Define abilities for the user here. For example:
    #
    #   return unless user.present?
    #   can :read, :all
    #   return unless user.admin?
    #   can :manage, :all
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, published: true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/blob/develop/docs/define_check_abilities.md
  end
end
