

#Fake matrices

CHARACTERS = ["Joey Jeremiah", "Snake Simpson", "Wheels", "Spike Nelson", "Arthur Kobalewscuy", "Caitlin Ryan", "Shane McKay", "Rick Munro", "Stephanie Kaye"]

def degrassi_couples
  all = CHARACTERS.product(CHARACTERS)
  all.reject {|c| c.first == c.last}
end

puts
p degrassi_couples


# #taking transpose of an array
# class Announcements
#   def initialize#(printer)
#     @printer = "System Printer"
#   end

#   def notify_user(column_table)
#     row_table = column_table.transpose
#     @printer.print_with_ink(row_table)
#   end

#   def print_with_ink(data)
#     puts "#{@printer} is printing row-based table:"
    
#     data.each do |row|
#       p row
#     end
#   end
# end

# announcer = Announcements.new

# column_table = [
#   ["A1", "A2", "A3"],
#   ["B1", "B2", "B3"]
# ]

# announcer.notify_user(column_table)



class Announcements
  def initialize
    @printer_name = "System Printer"
  end

  def notify_user(column_table)
    row_table = column_table.transpose
    print_with_ink(row_table)
  end

  def print_with_ink(data)
    puts "#{@printer_name} is printing row-based table:"
    
    data.each do |row|
      p row
    end
  end
end

announcer = Announcements.new

column_table = [
  ["A1", "A2", "A3"],
  ["B1", "B2", "B3"]
]

announcer.notify_user(column_table)