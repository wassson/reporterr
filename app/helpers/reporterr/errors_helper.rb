require 'reporterr'

module Reporterr
  module ErrorsHelper
    def klass(model_name)
      model_name.constantize
    end
  end
end
