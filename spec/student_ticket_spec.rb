require 'ticket'
require 'student_ticket'

describe StudentTicket do

  let(:student_ticket) { StudentTicket.new }

  describe "price" do
    it "should be 8.00" do
      student_ticket.price.should eql 8.00
    end
  end

  describe "discounts" do
    context "monday" do
      it "should be 10%" do
        student_ticket.monday_discount.should eql 0.10
      end
    end

    context "tuesday" do
      it "should be 5%" do
        student_ticket.tuesday_discount.should eql 0.05
      end
    end

    context "wednesday" do
      it "should be 50%" do
        student_ticket.wednesday_discount.should eql 0.5
      end
    end

    context "thursday" do
      it "should be 30%" do
        student_ticket.thursday_discount.should eql 0.3
      end
    end

    context "friday" do
      it "should not have any discount" do
        student_ticket.friday_discount.should eql 0
      end
    end

    context "non working days" do
      it "should not have any discount" do
        student_ticket.saturday_discount.should eql 0
        student_ticket.sunday_discount.should eql 0
      end
    end

  end

end
