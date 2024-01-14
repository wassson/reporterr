module Reporterr
  # Handle the context hash created by the
  # Error Reporter API
  module ContextBuilder
    PRIMITIVE_CONTEXT_KEYS = [:controller].freeze

    def self.build(context)
      return {} if context.empty?

      context_keys = context.keys
      context_keys.each do |key|
        case key
        when ->(k) { controller?(context[k]) }
          controller = context[:controller]
          controller_context = {
            name: controller.class.to_s,
            method: controller.request.method,
            url: controller.request.url,
            action: controller.action_name,
            params: controller.params
          }
          context[:controller] = controller_context
          context
        else
          return context
        end
      end
    end

    # Check if the value of :controller is ApplicationController
    # If not, return the original Hash
    def self.controller?(ctx)
      ctx.class.ancestors.include? ApplicationController
    end
    private_class_method :controller?
  end
end