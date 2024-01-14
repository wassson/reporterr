require 'rails/generators'
require 'rails/generators/named_base'
require "reporterr/version"
require "reporterr/engine"
require 'reporterr/context_builder'

module Reporterr
  @error_model = ''

  class << self 
    attr_accessor :error_model
  end
end
