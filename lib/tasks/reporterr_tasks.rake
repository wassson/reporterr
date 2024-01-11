task :tailwind_engine_watch do
  require "tailwindcss-rails"
  # NOTE: tailwindcss-rails is an engine
  system "#{Tailwindcss::Engine.root.join("exe/tailwindcss")} \
         -i #{Reporterr::Engine.root.join("app/assets/stylesheets/application.tailwind.css")} \
         -o #{Reporterr::Engine.root.join("app/assets/builds/reporterr.css")} \
         -c #{Reporterr::Engine.root.join("config/tailwind.config.js")} \
         --minify -w"
end
