# your code goes here
require 'pry'

class Person
    attr_reader :name
    attr_accessor :bank_account
    def initialize(name)
        @name = name
        @bank_account = 25
        #min 0 and max 10
        @happiness = 8
        @hygiene = 8
    end

    # def min_0_max_10(input)
    #     [input, 0, 10].sort[1]
    # end

    def happiness
        @happiness
    end
    #if we need to mod something with writer or reader can we do it through attr_accessor
    def happiness=(input)
        @happiness = [input, 0, 10].sort[1]
        
    end

    def hygiene
        @hygiene
    end
    
    def hygiene=(input)
        @hygiene = [input, 0, 10].sort[1]
    end

    def take_bath
        #option 1
        @hygiene = [@hygiene + 4, 0, 10].sort[1]
        #puts @hygiene

    #     @hygiene = @hygiene + 4
    #    #input = @hygiene
    #    hygiene=(@hygiene)
    #     puts @hygiene
        
    
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def clean?
        @hygiene > 7 ? true : false
    end

    def happy?
        @happiness > 7 ? true : false
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    

    def work_out
        @hygiene -= 3
        @happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend = Person.new(friend)
        return "Hi #{friend.name}! It's #{@name}. How are you?"
    end
end

milan = Person.new("Milan")
milan.hygiene = 8
puts milan.hygiene
milan.take_bath
#puts milan.hygiene
