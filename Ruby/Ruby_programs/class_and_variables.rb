#!/usr/bin/env ruby
class Books
    @@book_list=[]
    @@author_title=[]
    @@bookno=0
    def getTitle(title)
        @title=title
        puts "Title: #{@title}"
        @@author_title[0]=@title
    end
    def getAuthor(author)
        @author = author
        puts "Author: #{@author}"
        @@author_title[1]=@author
    end
    def print_details()
        @@book_list[@@bookno]=@@author_title
        puts "Bookno:#{@@bookno},Title:#{@@book_list[@@bookno][0]},Author:#{@@book_list[@@bookno][1]}"
        @@bookno=@@bookno+1
    end
end

book1=Books.new
book2=Books.new

book1.getTitle("Harry Porter")
book1.getAuthor("JK Rowling")
book1.print_details()
book2.getTitle("War and Peace")
book2.getAuthor("Leo Tolstoy")
book2.print_details()
