In continuation with the previous one

echo "gem 'devise'" >> Gemfile    # Or edit Gemfile and add line: gem 'devise'
bundle install                    # Fetch and install the gems
rails generate devise:install     # Creates config file, etc.
rails generate devise user        # Create model class, routes, etc.
rake db:migrate                   # Create user table
rails generate devise:views users
	

rails g migration AddUserToTodos user:references

rake db:migrate


changes in create
			@todo.user = current_user


changes in index

		@todos = Todo.where(user_id: current_user.id)

changes in application.html.erb from file
