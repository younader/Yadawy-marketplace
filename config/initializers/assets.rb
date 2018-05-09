# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w( static_pages.css )
Rails.application.config.assets.precompile += %w( boot.css )
Rails.application.config.assets.precompile += %w( contacts.css   )
Rails.application.config.assets.precompile += %w( main.css   )
Rails.application.config.assets.precompile += %w( util.css   )
Rails.application.config.assets.precompile += %w( products.css   )
Rails.application.config.assets.precompile += %w( sadmin.css   )
# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css.scss, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
