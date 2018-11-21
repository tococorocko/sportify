class BookingPolicy < ApplicationPolicy

  # def show?
  #   true
  # end

  def check_booking?
    return true
  end

  def create?
    return true
  end

  def update?
    return true
  end

  # def destroy?
  #   record.user == user
  # end

  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end
end
