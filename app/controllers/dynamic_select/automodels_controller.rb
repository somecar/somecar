module DynamicSelect
  class AutomodelsController < ApplicationController
    respond_to :json

    def index
      @automodels = Automodel.where(:automark_id => params[:automark_id])
      respond_with(@automodels)
    end
  end
end