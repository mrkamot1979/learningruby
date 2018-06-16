class BankAccount
	attr_reader :name



	def initialize(name)
		
		@name = name
		@transactions = []
		add_transaction("Beginning Balance", 0)
	end

	def add_transaction(description, amount)
		@transactions.push(description: description, amount: amount)

	end



	def credit(description, amount)
		add_transaction(description, amount)
	end

	def debit(description, amount)
		add_transaction(description, -amount)
	end

	def balance
		balance = 0
		@transactions.each do |transaction|
			balance += transaction[:amount]
		end
		return balance

	end




end

bank = BankAccount.new("Nenu")
bank.credit("Paycheck", 1000)
bank.debit("Groceries", 500)
puts bank.inspect
