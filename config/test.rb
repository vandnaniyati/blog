
input = [12, 1, 2, 13, 5, 7, 11]

def sort(input)
  input.length.times do
    input.each_with_index do |ele, index|
      if input[index+1] && ele < input[index+1]
        input[index], input[index+1] = input[index+1], input[index]
      end
    end
  end

  puts input[1]
end

sort(input)


def check_yield_p(input = "")
  # puts input.length
  yield input
end

def check_yield(input)
  # puts input.length
  yield input
  super()
end




We have a model called User and we store user info about patients and doctors.
There is another Model called appointments that stores the relationship b/w doctors and patients  Can you define the association required to perform this operation 

User.first.patients
User.first.doctors


Write down a scope to fetch all the patients in the users table.
User.patients

class User
  has_many :patients, class: "Appointment", forgien_key: :patient_id
  has_many :doctors, class: "Appointment", forgien_key: :doctor_id

  scope patients: { where(id: Appointment.pluck(patient_id).uniq) }

end


class Appointment
  belongs_to :patient, class: "User"
  belongs_to :doctor, class: "User"
end


rake db:migrate

database: migartion

cucumber

