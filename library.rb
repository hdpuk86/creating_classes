 class Library

   def initialize(library)
     @books = library
   end

   def library_size()
     return @books.length()
   end

   def return_full_library()
     return @books
   end

   def return_book(book_title)
     for book in @books
       return book if book[:title] == book_title
     end
   end

   def rental_details(book_title)
     for book in @books
       return book[:rental_details] if book[:title] == book_title
     end
   end

   def add_new_book(new_book)
      @books << new_book
   end

   def change_rental_details(book_title, new_student, new_date)
     for book in @books
       if book[:title] == book_title
         book[:rental_details][:student_name] = new_student
         book[:rental_details][:date] = new_date
       end
     end
   end

 end
