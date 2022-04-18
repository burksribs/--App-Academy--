require "employee"

class Startup
    attr_reader :name, :funding, :salaries, :employees

    def initialize(name, funding, salaries)
        @name = name
        @funding = funding
        @salaries = salaries
        @employees = []
    end

    def valid_title?(title)
        return salaries.keys.include?(title)
    end

    def >(other_startup)
        self.funding > other_startup.funding
    end

    def hire(employee_name, title)
        if valid_title?(title)
            @employees << Employee.new(employee_name, title)
        else
            raise "Invalid title"
        end
    end

    def size
        @employees.count
    end

    def pay_employee(employee)
        amount = self.salaries[employee.title]
        if amount > @funding
            raise "Not have enough money"
        else
            employee.pay(amount)
            @funding -= amount
        end
    end

    def payday
        employees.each { |e| pay_employee(e)}
    end

    def average_salary
        sum = 0
        @employees.each { |employee| sum += salaries[employee.title] }
        sum / @employees.length
    end

    def close
        @employees = []
        @funding = 0
    end

    def acquire(other_startup)
        @funding += other_startup.funding

        other_startup.salaries.each do |title, amount|
            if !@salaries.has_key?(title)
                @salaries[title] = amount
            end
        end
      
        @employees = @employees + other_startup.employees
        other_startup.close()
    end
end
