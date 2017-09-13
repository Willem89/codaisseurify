require 'rails_helper'

RSpec.describe Artist, type: :model do
describe "validations" do
  it { is_expected.to validate_presence_of(:first_name) }
  it { is_expected.to validate_presence_of(:last_name) }
  it { is_expected.to validate_presence_of(:genre) }
end
  describe "associations" do
    it { is_expected.to have_many(:songs) }
  end
end
