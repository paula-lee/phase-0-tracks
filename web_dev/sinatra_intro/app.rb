# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end


# RELEASE 0: Add Routes
# write a GET route that displays contacts
get '/contact/:address' do
  address = params[:address]
  "Contact Information <br>
   Address: #{address}"
end

# write a GET route that takes a person's name
# and add a query parameter
# remember to put '?' for query parameter
get '/great_job' do
  name = params[:name]
  if name
    "Great job, #{name}!"
  else
    "Great job!"
  end
end

# write a GET route that uses parameters to add two
# numbers and respond with result
get '/add/:num_1/:num_2' do
  total = params[:num_1].to_i + params[:num_2].to_i
  "#{total}"
end

