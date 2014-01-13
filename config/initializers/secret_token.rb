# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exists?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
    #Generate a new token and store it in the token file
    token = securerandom.hex(64)
    File.write(token_file, token)
    token
  end
end


# Original
#SampleApp::Application.config.secret_key_base = 'bb9434684d7c0bba39fa653b0360712a4ca67e50a25f2223af9f7a64a640c2eef526a0ecafa5b68533109dd1b114db12a3c95c8db7008bf806b0b37f03774ecc'
