class Doctor

attr_accessor :name

@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select do |appt|
      appt.doctor == self
    end
  end

  def new_appointment(Patient, date)
    Appointment.new(Patient, self, date)
  end
end
