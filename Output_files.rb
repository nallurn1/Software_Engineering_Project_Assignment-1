require 'csv'
module Output_files
    def Output_files.creating_output1(enrollfile, e2)
        #Writing the Enrollment attriubutes to output file #1, enrollfile
        #Within CSV.open, I created the headers for this output file
        CSV.open(enrollfile, 'w', :write_headers=> true, :headers => ["Course Num","Sections","Student IDs", "Seats Filled", "Seats Open", "Can Class Run?"]) do |write|
            e2.each{|c| write << c}
        end
    end 
    def Output_files.creating_output2(studentfile, s_e1)    
        #Writing the Stud_Enrollment attriubutes to output file #2, studentfile
        #Within CSV.open, I created the headers for this output file
        CSV.open(studentfile, 'w', :write_headers=> true, :headers => ["Student IDs","Classes Enrolled Into", "Reason"]) do |write|
            s_e1.each{|c| write << c}
        end
    end
end