require_relative '../app/authenticator'  
require 'rspec'

RSpec.describe 'Authenticator Program' do
  let(:users) {
    [
      {username: "Lewis", password: "password1"},
      {username: "Gregory", password: "password2"},
      {username: "Lenny", password: "password3"},
      {username: "Homer", password: "password4"},
      {username: "Billy", password: "password5"}
    ]
  }

  describe '#authenticate_user' do
    it 'welcomes the user after a valid login' do
      result = authenticate_user(users, 'Lewis', 'password1')
      expect(result).to eq('Welcome, Lewis! Password accepted. Program ended successfully!')
    end

    it 'returns nil for invalid username or password' do
      result = authenticate_user(users, 'Lewis', 'wrongpassword')
      expect(result).to be_nil
    end

    it 'returns nil when no user exists with the given username' do
      result = authenticate_user(users, 'NonExistentUser', 'password1')
      expect(result).to be_nil
    end

    it 'welcomes the user regardless of case sensitivity in the username' do
      result = authenticate_user(users, 'leWiS', 'password1')
      expect(result).to eq('Welcome, Lewis! Password accepted. Program ended successfully!')
    end
  end
end
