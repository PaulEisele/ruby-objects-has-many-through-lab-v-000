class Patient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all = []
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    appointment.collect do |appointment|
      appointment.doctor
    end
  end

end
