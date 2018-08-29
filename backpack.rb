class Backpack
  def initialize(attributes)
    @attributes = attributes # a hash containing day_of_week and weather keys
    @items = []
    prepare
  end

  def items
    @items
  end

  def prepare
    pack_for_weather_attribute
    pack_for_day_attribute
    pack_required

  end

  # Prints a summary packing list for Melinda's backpack
  def packing_list
    output = []
    output << "Melinda, here's your packing list!"
    output << "Day: #{@attributes[:day_of_week]}, Weather: #{@attributes[:weather]}"
    output << ""

    @items.each do |item|
      output << "- #{item}"
    end
    output.join("\n")
  end

  def pack_for_weather_attribute
    weather_condition = @attributes[:weather]
    # Ensure appropriate clothing is added to backpack
    if weather_condition == 'rainy'
      @items << 'umbrella'
    elsif weather_condition == 'cold'
      @items << 'jacket'
    end
  end

  def pack_for_day_attribute
    day_of_week = @attributes[:day_of_week]

    # Ensure gym shoes are added to backpack if it's a gym day
    if day_of_week == 'monday' || day_of_week == 'thursday'
      #add gym shoes to items
      @items << 'gym shoes'
    end

    # Bring a packed lunch on all weekdays
    if day_of_week != 'saturday' && day_of_week != 'sunday'
      @items << 'packed lunch'
    elsif false
      @items << 'snacks'
    end
  end

  def pack_required
    @items << 'pants'
    @items << 'shirt'
  end

end
