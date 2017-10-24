# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')
Rails.application.config.assets.paths << Rails.root.join('/app/assets/fonts')
#Rails.application.config.assets.precompile += %w( template/jquery.min.js )
#Rails.application.config.assets.precompile += %w( template/bootstrap.min.js )
#Rails.application.config.assets.precompile += %w( template/skel.min.js )
#Rails.application.config.assets.precompile += %w( template/util.js )
#Rails.application.config.assets.precompile += %w( template/chosen.jquery.js )
#Rails.application.config.assets.precompile += %w( template/main.js )
# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
