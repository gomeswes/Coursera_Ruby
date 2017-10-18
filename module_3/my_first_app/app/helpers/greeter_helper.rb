module GreeterHelper
	def formatted_time(time)
		#time string in AM/PM
		time.strftime("%I:%M%p")
	end
end
