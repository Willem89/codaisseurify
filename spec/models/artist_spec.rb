require 'rails_helper'

RSpec.describe Artist, type: :model do
  describe "validations" do
    it "is invalid without first_name"
    it "is invalid without last_name"
  end
end
