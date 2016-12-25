module ActiveAdmin
  class PagePolicy < ApplicationPolicy
    def show?
      user.has_role? :admininstrator
    end
  end
end