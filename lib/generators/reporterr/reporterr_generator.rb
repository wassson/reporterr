# frozen_string_literal: true

require 'rails/generators/active_record'
require 'rails/generators/base'

module Reporterr
  module Generators
    # Generate migration, model, and subscriber files
    class ReporterrGenerator < Rails::Generators::NamedBase
      source_root File.expand_path('templates', __dir__)

      def create_reporterr_migration_file
        table_name = name
        attributes = %w[error:text severity context:json]
        sys_call = "#{table_name} #{attributes.join(' ')}"

        system("rails generate migration Create#{sys_call}")

        puts "\n#{table_name} table migration generated in /db/migrate"
        puts '======================================================'
      end

      def create_reporterr_model_file
        @name = name.gsub(/(.)([A-Z])/, '\1_\2').downcase
        template 'model.rb.tt', File.join('app/models/', "#{@name}.rb")

        puts "\n#{@name} model generated in /models"
        puts '======================================================'
      end

      def create_reporterr_subscriber_file
        subscriber_name = @name
        template 'subscriber.rb.tt',
                 File.join('config/initializers',
                           "#{subscriber_name}_subscriber.rb")
        puts "\n#{subscriber_name} subscriber generated in /config/initializers"
        puts '======================================================'
      end
    end
  end
end
