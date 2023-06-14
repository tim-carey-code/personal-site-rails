class AdminPolicy < ApplicationPolicy
  def index?
    admin?
  end

  def new?
    admin?
  end

  def create?
    admin?
  end

  def update?
    admin?
  end

  def edit?
    admin?
  end

  def destroy?
    admin?
  end

  def show?
    admin?
  end

  private

  def admin?
    user.admin?
  end
end
