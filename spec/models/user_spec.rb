require 'rails_helper'

RSpec.describe User, type: :model do
  it "is not valid without attributes" do
    user = User.new(email: nil, password: nil)
    expect(user).to_not be_valid
  end
  it "is valid with a email and password" do
    user = User.new(email: 'luca@luca.com', password: 'password123')
    expect(user).to be_valid
  end
end
