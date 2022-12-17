# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

Rails.application.config.assets.precompile += %w(
    application.scss
    entries.scss
    entries.new.scss
    falsh.scss
    registrations.edit.scss
    researchers.scss
    sign_in.scss
    sign_up.scss
    student.scss
    users.scss
    style.css
    common/*
    partial/*
    posts.scss
    posts/index.css
    posts/new.css
    posts/show.css
    posts/edit.css
    sign_in
 )


# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
