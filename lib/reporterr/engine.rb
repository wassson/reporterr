module Reporterr
  class Engine < ::Rails::Engine
    isolate_namespace Reporterr

    # NOTE: add engine manifest to precompile assets in production, if you don't have this yet.
    initializer "my-engine.assets" do |app|
      app.config.assets.precompile += %w[reporterr_manifest]
    end
  end
end
