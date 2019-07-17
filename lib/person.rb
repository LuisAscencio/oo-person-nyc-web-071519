# your code goes here

class Person

    attr_reader :name, :happiness, :hygiene 
    attr_accessor :bank_account
     



    def initialize (name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end



    def hygiene=(hygiene)
       if  hygiene>10
            @hygiene=10
       elsif hygiene<0
        @hygiene=0
       else @hygiene=hygiene
        end
        
    end


    def happiness=(happiness)
        if happiness>10
            @happiness=10
            elsif happiness<0
                @happiness=0
            else @happiness=happiness
            
        end        
    end


     def clean?
         if self.hygiene>7
         return true
         else false 
        end
    end


    def happy?
        if self.happiness>7
            return true
        else false
        end  
    end

   

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end 

    
    def take_bath 
        @hygiene += 4
        self.hygiene=(@hygiene)
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    # this works
    def work_out 
     @happiness += 2
     @hygiene -= 3
     self.hygiene=(@hygiene)
     self.happiness=(@happiness)
     return "♪ another one bites the dust ♫"
    end    

    

    def start_conversation(person, topic)
        if topic =="politics"
            person.happiness-=2
            @happiness-=2
            self.happiness=(@happiness)
         return "blah blah partisan blah lobbyist"
         elsif topic =="weather"
            person.happiness+=1
            @happiness+=1
            self.happiness=(@happiness)
            return 'blah blah sun blah rain'
         else topic=="other"
            return 'blah blah blah blah blah'


        end
    
    end




    def call_friend(friend)
        @happiness+=3
        friend.happiness+=3
        self.happiness=(@happiness)
        return "Hi #{friend.name}! It's #{@name}. How are you?"
        
    end





   

end