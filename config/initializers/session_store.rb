# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_sixfivenine_session',
  :secret      => 'df1fb0f2eb0fff62f124031bbf716d8a33daf9d75f8bf7ead0dab4bc279fb8b257f8ea1cac1f33716005c6ca0eb5f4b20e49906d1d4149d4ebbb201754b4124e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
