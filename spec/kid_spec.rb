require 'person'
require 'kid'

describe Kid do

  let(:kid) { Kid.new }

  describe "discounts" do
    context "monday" do
      it "should be 10%" do
        kid.monday_discount.should eql 0.1
      end
    end

    context "tuesday" do
      it "should be 15%" do
        kid.tuesday_discount.should eql 0.15
      end
    end

    context "wednesday" do
      it "should be 30%" do
        kid.wednesday_discount.should eql 0.3
      end
    end

    context "thurday" do
      it "should not have any discount" do
        kid.thursday_discount.should eql 0
      end
    end

    context "friday" do
      it "should be 11%" do
        kid.friday_discount.should eql 0.11
      end
    end

  end

end
