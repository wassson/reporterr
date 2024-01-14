module Reporterr
  class ErrorsController < ApplicationController
    include ErrorsHelper

    def index
      # TODO: Add filtering
      @errors = params[:filter] ? [] : ReportedError.all
      # raise 'Error without handler'
      # Rails.error.handle do
      #   raise 'Error with handler'
      # end
    end
  end
end
