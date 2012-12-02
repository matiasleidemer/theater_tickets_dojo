require 'ticket'
require 'kid_ticket'

describe KidTicket do

  let(:kid_ticket) { KidTicket.new }

  describe "discounts" do
    context "monday" do
      it "should be 10%" do
        kid_ticket.monday_discount.should eql 0.1
      end
    end

    context "tuesday" do
      it "should be 15%" do
        kid_ticket.tuesday_discount.should eql 0.15
      end
    end

    context "wednesday" do
      it "should be 30%" do
        kid_ticket.wednesday_discount.should eql 0.3
      end
    end

    context "thurday" do
      it "should not have any discount" do
        kid_ticket.thursday_discount.should eql 0
      end
    end

    context "friday" do
      it "should be 11%" do
        kid_ticket.friday_discount.should eql 0.11
      end
    end

    context "non working days" do
      it "should not have any discount" do
        kid_ticket.non_working_day_discount.should eql 0
      end
    end

  end

end
