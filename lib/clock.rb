class String
  define_method(:clock_angle) do

    #convert from string to array
    raw_time = self.split(':')
    raw_time_float = []
    raw_time.each() do |element|
      raw_time_float.push(element.to_f())
    end

    raw_minute = raw_time_float.at(1)
    raw_hour = raw_time_float.at(0)

    conv_minute = raw_minute.*(12)
    conv_hour = (raw_hour.*(60)).+(raw_minute)

    converted_time = [conv_minute, conv_hour]
    #puts(converted_time)

    #normal calculation for shortest distance
    angle = converted_time.max.-(converted_time.min)
    #puts(angle)

    #use different calculation if shortest distance passes through 12
    if angle.>(360)
      angle = (720.-(conv_minute)).+(conv_hour)
    end

    #divide in half to get degree
    degree = angle./(2.0)
    #puts(degree)

    degree

  end
end

# "1:55".clock_angle()
