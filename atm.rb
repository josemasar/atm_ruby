class ATM

    def initialize(credit)
        @credit = credit
    end

    def drop_money
        puts "Your credit is #{@credit}$"
        puts "How much money want to drop?"
        money = gets().chomp().to_i
        @credit -= money
        puts "Your remaining credit is #{@credit}$"
        another_operation()
    end

    def deposit_money
        puts "Your credit is #{@credit}$"
        puts "How much money want to deposit?"
        money = gets().chomp().to_i
        @credit += money
        puts "Your credit is now #{@credit}$"
        another_operation()
    end

    def view_credit
        puts "Your credit is #{@credit}$"
        another_operation()
    end 

    def another_operation
        puts "Would you like to perform another operation?"
        puts "Enter 'Y' for yes and 'N' for no"
        response = gets().chomp().to_s
        response == 'Y' ? @selection = 0 : @selection = 4 
    end

    def menu
        #ATM options Menu
        while @selection != 4
            puts "---***Welcome to this ATM***---"
            puts "Which action would you like to do?"
            puts "Select a number"
            puts "1 - Drop money"
            puts "2 - Deposit money"
            puts "3 - View your credit"
            puts "4 - Exit"
            @selection = gets().chomp().to_i 

            unless @selection == 4
                if @selection == 1
                    drop_money()
                elsif @selection == 2
                    deposit_money()
                else
                    view_credit()
                end
            end
        end
        puts "Goodbye"
    end
end

operation = ATM.new 1000
operation.menu()