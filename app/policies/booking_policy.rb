class BookingPolicy < ApplicationPolicy

  # def show?
  #   true
  # end

  # def create?
  #   return true
  # end

  # def update?
  #   record.user == user
  # end

  # def destroy?
  #   record.user == user
  # end

  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end
end
