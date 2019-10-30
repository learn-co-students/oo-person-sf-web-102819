class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene
  
    def initialize(name)
      @name = name
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
    end
  
    def happiness=(happiness)
      if happiness <= 10 && happiness >= 0
        @happiness = happiness
      elsif happiness > 10
        @happiness = 10
      else
        @happiness = 0
      end
    end
  
    def hygiene=(hygiene)
      if hygiene <= 10 && hygiene >= 0
        @hygiene = hygiene
      elsif hygiene > 10
        @hygiene = 10
      else
        @hygiene = 0
      end
    end
  
    def happy?
      if @happiness > 7
        return true
      else
        return false
      end
    end
  
    def clean?
      if @hygiene > 7
        return true
      else
        return false
      end
    end
  
    def get_paid(dollars)
      @bank_account += dollars
      "all about the benjamins"
    end
  
    def take_bath
      # last_hygiene = @hygiene
      self.hygiene += 4
      "♪ Rub-a-dub just relaxing in the tub ♫"
    end
  
    def work_out
      self.hygiene -= 3
      self.happiness += 2
      "♪ another one bites the dust ♫"
    end
  
    def call_friend(friend)
      friend.happiness += 3
      self.happiness += 3
      "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
  
    def start_conversation(friend, topic)
      if topic == "politics"
        friend.happiness -= 2
        self.happiness -= 2
        "blah blah partisan blah lobbyist"
      elsif topic == "weather"
        friend.happiness += 1
        self.happiness += 1
        "blah blah sun blah rain"
      else
        "blah blah blah blah blah"
      end
    end
end