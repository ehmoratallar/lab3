class Patient < ActiveRecord::Base

def Patient.showAppointments(patient_id)
		cita = Appointment.where(:patient_id => patient_id)
		
		#puts "Hora: #{cita[0].begin_time}"
		
				
		cita.each do |c|
			
			puts "Appointment Start: #{c.begin_time}"
			
		end
		
		
		
	end

end
