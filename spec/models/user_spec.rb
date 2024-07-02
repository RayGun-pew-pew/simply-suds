require 'rails_helper'

RSpec.describe User, type: :model do
  it "should throw an exception if first_name is missing" do
    expect {create(:user, first_name: nil)}.to raise_error{ActiveRecord::RecordInvalid}
  end
  it "should throw an exception if last_name is missing" do
    expect {create(:user, last_name: nil)}.to raise_error{ActiveRecord::RecordInvalid}
  end
  it "should throw an exception if email_address is missing" do
    expect {create(:user, email_address: nil)}.to raise_error{ActiveRecord::RecordInvalid}
  end
  it "should create a valid record" do
    expect { create(:user) }.not_to raise_error{ActiveRecord::RecordInvalid}
  end
  it "should update user first_name if valid"
  it "should update user last_name if valid"
  it "should update email_address if valid"
  it "should destroy existing user"
  it "should update password"
end
