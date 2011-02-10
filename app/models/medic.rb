class Medic < ActiveRecord::Base
	 def Medic.showAppointments(medic_id)
		cita = Appointment.where(:medic_id => medic_id)
		
		#puts "Hora: #{cita[0].begin_time}"
		
				
		cita.each do |c|
			
			puts "Appointment Start: #{c.begin_time}"
			
		end
		
		
		
	end
end
