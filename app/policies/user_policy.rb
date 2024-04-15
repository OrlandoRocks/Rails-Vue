class UserPolicy < ApplicationPolicy
  def index?
    user.admin?
  end

  def show?
    user.admin? || record == user
  end

  def create?
    true
  end

  def update?
    user.admin? || record == user
  end

  def destroy?
    user.admin?
  end

  # NOTE: This is a class method, not an instance method
  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
