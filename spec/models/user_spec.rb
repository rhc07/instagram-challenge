require 'rails_helper'

RSpec.describe User, type: :model do
  
  before do
      @user = User.new({
        email: "user@test.com", 
        user_handle: "user123", 
        password: "password", 
        password_confirmation: "password"
        })
      end

  subject { @user }

  describe "email address" do
    it "returns the correct email address" do
      expect(subject.email).to eq("user@test.com")
    end
  end

  describe "user handle" do
    it "returns the correct user handle" do
      expect(subject.user_handle).to eq("user123")
    end
  end

  describe "password" do
    it "returns the correct password" do
      expect(subject.password).to eq("password")
    end
    it "returns the correct password confirmation" do
      expect(subject.password_confirmation).to eq("password")
    end
  end
end  



