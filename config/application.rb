require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module Todoapp
  class Application < Rails::Application

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true

    # add app/assets/fonts to the asset path
    config.assets.paths << Rails.root.join("app", "assets", "fonts")
    config.assets.precompile << /\.(?:svg|eot|woff|ttf)$/
  end
end

