# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
#Rails.application.config.assets.precompile += %w( owl.carousel.css owl.theme.css owl.transitions.css style.css animate.css main.css)

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
Rails.application.config.assets.precompile += %w( lightbox.js plugins/owl-carousel/owl.carousel.min.js js/jquery.easing.min.js plugins/countTo/jquery.countTo.js plugins/inview/jquery.inview.min.js plugins/Lightbox/dist/js/lightbox.min.js plugins/WOW/dist/wow.min.js js/custom.js )
