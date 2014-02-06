require_relative 'racecars'

a = RaceCar.new(12)
b = RaceCar.new(44)
c = RaceCar.new(77)
d = RaceCar.new(98)
e = RaceCar.new(52)

rt = RaceTrack.new

rt.add_car(a)
rt.add_car(b)
rt.add_car(c)
rt.add_car(d)
rt.add_car(e)

rt.start_race

rt.check_progress

rt.time_elapsed
rt.time_elapsed
rt.time_elapsed
rt.time_elapsed


