#!/usr/bin/env ruby
def Fabonacci_series(n_terms)
    n1,n2=0,1
    count =0
    n_terms=n_terms.to_i
    puts "Fabonacci Sequence"
    while count < n_terms do
        print("\n #{n1}")
        nth = n1 + n2
        n1=n2
        n2=nth
        count +=1
    end
end

puts "How long u want the series to be"
n_terms= gets 
Fabonacci_series n_terms
