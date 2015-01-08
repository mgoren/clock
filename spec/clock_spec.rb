require('rspec')
require('clock')

describe('String#clock_angle') do

  it('returns number of degrees in the shortest distance between clock hands') do
    expect("6:45".clock_angle()).to(eq(67.5))
  end
  it('returns number of degrees in the shortest distance between clock hands when shortest distance is thru 12:00') do
    expect("1:55".clock_angle()).to(eq(87.5))
  end

end
