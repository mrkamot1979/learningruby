class Name
  attr_reader  :title, :first_name, :middle_name, :last_name 
  attr_writer  :title

  def initialize(title, first_name, middle_name, last_name)
    @title = title
    @first_name = first_name
    @midde_name = middle_name
    @last_name = last_name
  end
end

ngalan = Name.new("Mr.", "Nino", "Abantao", "Roldan")

puts ngalan.title + " " + ngalan.first_name

ngalan.title = "Kamahalan"

puts "ang bagong title is " + " " + "#{ngalan.title}"


