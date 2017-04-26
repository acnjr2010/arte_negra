RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  config.main_app_name = ["Associação de Capoeira Arte Negra", ""]

  config.model Welcome do
    visible false
  end

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.model Evento do
    navigation_icon 'fa fa-calendar'
    list do
      field :title
      field :content
    end
  end

  config.model Video do
    navigation_icon 'fa fa-youtube'
    list do
      field :title
      field :video
    end
  end

  config.model User do
    navigation_icon 'fa fa-users'
    list do
      field :email
      field :sign_in_count
    end

    create do
      field :email
      field :password
      field :password_confirmation
    end

    edit do
      field :email
      field :password
      field :password_confirmation
    end
  end

  config.model Image do
    navigation_icon 'fa fa-image'
    parent Album
    weight -2

    list do
      field :file
      field :album
    end
  end

  config.model Album do
    navigation_icon 'fa fa-camera'
    list do
      field :title
      field :images
    end

    create do
      field :title
    end

    edit do
      field :title
      field :images
    end
  end
end
