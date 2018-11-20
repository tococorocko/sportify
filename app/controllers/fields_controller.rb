class FieldsController < ApplicationController
  def index
    @fields = current_user.fields
  end
end
