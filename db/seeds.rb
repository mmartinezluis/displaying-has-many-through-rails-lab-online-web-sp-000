Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all

meredith = Doctor.create({name: "Meredith Grey", department: "Internal Medicine"})
hawkeye = Doctor.create({name: "Hawkeye Pierce", department: "Surgery"})
leonard = Doctor.create({name: "Leonard 'Bones' McCoy", department: "Internal Medicine"})
phillip = Doctor.create({name: "Phillip Chandler", department: "Internal Medicine"})
michaela = Doctor.create({name: "Michaela Quinn", department: "Internal Medicine"})

homer = Patient.create({name: "Homer Simpson", age: 38})
bart = Patient.create({name: "Bart Simpson", age: 10})
marge = Patient.create({name: "Marge Simpson", age: 36})
lisa = Patient.create({name: "Lisa Simpson", age: 8})
maggie = Patient.create({name: "Maggie Simpson", age: 1})

Appointment.create([
  {appointment_datetime: DateTime.new(2016, 03, 15, 18, 00, 0), patient: homer, doctor: hawkeye},
  {appointment_datetime: DateTime.new(2016, 01, 11, 20, 20, 0), patient: bart, doctor: meredith},
  {appointment_datetime: DateTime.new(2016, 04, 22, 14, 00, 0), patient: marge, doctor: michaela},
  {appointment_datetime: DateTime.new(2017, 10, 30, 15, 00, 0), patient: lisa, doctor: phillip},
  {appointment_datetime: DateTime.new(2016, 07, 11, 16, 00, 0), patient: maggie, doctor: leonard},
  {appointment_datetime: DateTime.new(2016, 05, 31, 17, 00, 0), patient: homer, doctor: hawkeye},
  {appointment_datetime: DateTime.new(2017, 06, 03, 10, 00, 0), patient: marge, doctor: meredith}
])


# def appointment_datetime=(string)
#   object = DateTime.new(string)
# end

# def appointment_datetime
#   display = self.appointment_datetime
#   display = display.strftime('%B %d, %Y at %H:%M')
# end

# rails g resource Appointment appointment_datetime:DateTime patient:belongs_to doctor:belongs_to --no-test-framework --skip-routes
# rails g resource Doctor name:string department:string --no-test-framework --skip-routes
# rails g resource Patient name:string age:integer --no-test-framework --skip-routes


# class Game
#   def tiempo=(data)
#     @data= data
#   end

#   def tiempo
#     @data.strftime('%B %d, %Y at %H:%M')
#   end
# end

# game= Game.new
# game.tiempo= DateTime.new(2017, 06, 03, 13, 00, 0)
# game.tiempo