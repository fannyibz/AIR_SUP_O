class ServicePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    true
  end

  def edit?
    service_owner?
  end

  def update?
    service_owner?
  end

  def destroy?
    service_owner?
  end

  private

  def service_owner?
    record.user == user
  end
end
