# TODO create default admin user
AdminUser.create!(:email => 'admin@tekrails.com', :password => 'password', :password_confirmation => 'password')
Page.create!(:page => 'Home')
Page.create!(:page => 'Work')
Page.create!(:page => 'Service')
Page.create!(:page => 'Process')
Page.create!(:page => 'Team')
Page.create!(:page => 'Open Source')
Page.create!(:page => 'Contact')