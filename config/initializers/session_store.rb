# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_maex_rails_session',
  :secret      => '309dceaca2db1e8d94c4042cc21c59e8a63e3f662600e059268c69683d886bca0acabaa5af73808700224718e783cfe27e70a5182d25418a09123cc113df2c71'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
