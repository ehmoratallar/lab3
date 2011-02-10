class Appointment < ActiveRecord::Base

	def Appointment.assignAppointment(medic_id, patient_id, begin_time, end_time)
		
		puede_asignarse = true
		
		citas_medico = Appointment.where(:medic_id => medic_id) 
		
		citas_medico.each do |cita|
			
			if (cita.begin_time <= end_time and cita.end_time >= begin_time)
				puede asignarse = false
			end
			
		end
		
		
		citas_paciente = Appointment.where(:patient_id => patient_id) 
		
		citas_paciente.each do |cita|
			
			if (cita.begin_time <= end_time and cita.end_time >= begin_time)
				puede asignarse = false
			end
			
		end
		
		
		if (puede_asignarse)
			
			asignar = Appointment.new do |cita|
				cita.begin_time = begin_time
				cita.patient_id = patient_id
				cita.medic_id = medic_id
				cita.end_time = end_time
			end
			
			puede_asignarse = asignar.save
			
			
			
		end
		
		
		return puede_asignarse
		
	end
	
	def Appointment.modifyAppointment(appointment_id, medic_id, begin_time, end_time)
		
		modificar_cita = Appointment.where(:id => appointment_id) 
		modificar_cita = modificar_cita[0]
		
		modificar_cita.begin_time = begin_time
		modificar_cita.end_time = end_time
		modificar_cita.medic_id = medic_id
		
		return modificar_cita.save
		
	end
	
	def Appointment.deleteAppointment(appointment_id)
		
		
		
		return Appointment.delete(appointment_id)
		
	end

end
