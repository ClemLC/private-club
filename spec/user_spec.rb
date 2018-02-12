require 'rails_helper'

RSpec.describe User, type: :model do
  it 'should create a user' do
    User.create
    expect(:first_name).to_not be_nil
  end
end

RSpec.describe User, type: :view do
  
