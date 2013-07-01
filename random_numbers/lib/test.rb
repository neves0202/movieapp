class Test

  attr_accessor :name 

    def initialize(name)
        @name = name
    end


      def tell(name)
        puts "Okay #{name}, so here are the rules:"
        puts " You must guess a number between one and ten"
        puts " You will only have three tries to get it right"
        puts
      end

end