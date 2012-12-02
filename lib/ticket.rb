class Ticket
  #time.strftime("%A").downcase

  def price
    11.00
  end

  def calculate_price
    #todo
  end

  def monday_discount
    return 0.1
  end

  def method_missing(name, *args, &block)
    if name.to_s =~ /_discount$/
      return 0
    else
      super
    end
  end

end
