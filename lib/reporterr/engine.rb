module Reporterr
  class Engine < ::Rails::Engine
    isolate_namespace Reporterr

    # NOTE: add engine manifest to precompile assets in production, if you don't have this yet.
    initializer "my-engine.assets" do |app|
      app.config.assets.precompile += %w[reporterr_manifest]
      app.config.assets.paths << Rails.root.join("app", "assets", "fonts")
    end
  end
end
