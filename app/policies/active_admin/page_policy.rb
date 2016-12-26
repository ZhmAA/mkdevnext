module ActiveAdmin
  class PagePolicy < ApplicationPolicy
    def show?
      user.has_role? :administrator
    end
  end
end