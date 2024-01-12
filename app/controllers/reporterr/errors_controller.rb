module Reporterr
  class ErrorsController < ApplicationController
    def index
      error_models = Reporterr.error_models
      @errors = error_models.first.constantize.first(10)
    end
  end
end
