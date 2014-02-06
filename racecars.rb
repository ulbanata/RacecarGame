

class RaceCar
	attr_accessor :num
	attr_accessor :speed
	attr_accessor :distance

	def initialize(num)
		@speed = 0
		@distance = 0
		@num = num
	end

	def random_speed(hours)
		@speed += rand(20)
		if hours == 0
			@speed += 60
		end
		@distance += @speed 

	end

end

class RaceTrack
	def initialize
		@cars = []
		@hours = 0
		@racing = false
	end

	def add_car(car)
		if @racing
			puts "I'm sorry, the race has started. No more cars allowed."
		else
			@cars << car
		end
	end

	def start_race
		@racing = true
		@cars.each { |x| x.random_speed(@hours)}
		@hours = 1
	end

	def check_progress
		if @racing
			@cars.each { |x| puts "Car #{x.num} is traveling at #{x.speed} MPH and has gone #{x.distance} miles."} 
		else
			puts "Sorry, no cars are racing at this time."
		end

	end

	def time_elapsed
		@cars.each { |x| x.random_speed(@hours)}
		@hours+=1
		if @hours == 5
			@cars = @cars.sort_by { |x| x.distance }
			@cars = @cars.reverse
			@cars.each_with_index do |x, index|
				puts "#{index+1}. Car #{x.num}. Distance #{x.distance}" 
				x.speed = 0
				x.distance = 0
			end
			@cars = []
			@hours = 0
			@racing = false
		end

	end


end










