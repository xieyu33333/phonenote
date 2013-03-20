require 'spec_helper'
describe User do
  before {@user = User.new(name: "Example User"  ,email:"user@example.com" , password:"12345" , password_confirmation:"12345")}
  subject{ @user }
  
  it {should respond_to (:name)}
  it {should respond_to (:email)}
  it {should respond_to (:password)}
  it {should respond_to (:password_confirmation)}
  it {should respond_to (:password_digest)}
  it {should be_valid}
  
  describe "when name is not present" do
    before{ @user.name = ""}
    it {should_not be_valid}
  end
  
  describe "when password is not present" do
    before{ @user.password = ""}
    it {should_not be_valid}
  end
  
  describe "when email is not present" do
    before{ @user.email = ""}
    it {should_not be_valid}
  end
  
  describe "when name is too long" do
    before{ @user.name = "a"*80}
    it {should_not be_valid}
  end
  
  describe "when email is already used" do
    before do
      user_with_same_eamil = @user.dup
      user_with_same_email.save
    end
    it {should_not be_valid}
  end
  
end