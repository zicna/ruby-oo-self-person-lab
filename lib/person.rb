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
        self.hygiene +=4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    #option 1
        #@hygiene = [@hygiene + 4, 0, 10].sort[1]
        #puts @hygiene
          #option 2
    #     @hygiene = @hygiene + 4
    #    #input = @hygiene
    #    hygiene=(@hygiene)
    #     puts @hygiene

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
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        #friend = Person.new(friend)
        self.happiness +=3
       friend.happiness+= 3
        return "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    
    end
end

