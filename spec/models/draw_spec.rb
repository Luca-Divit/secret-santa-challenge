require 'rails_helper'

RSpec.describe Draw, type: :model do
  it "is not valid without attributes" do
    expect(Draw.new).to_not be_valid
  end
end
