require 'rails_helper'

describe Trip, type: :model do
  describe "validations" do
    it { should validate_presence_of :title }
    it { should validate_presence_of :destination}
    it { should validate_presence_of :miles }
  end

  describe "relationships" do
    it {should have_many :trip_travelers}
    it {should have_many(:travelers).through(:trip_travelers)}

  end


end
