require 'rails/generators'
require 'rails/generators/named_base'
require "reporterr/version"
require "reporterr/engine"

module Reporterr
  @error_models = []

  class << self 
    attr_accessor :error_models
  end
end
