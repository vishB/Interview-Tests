class UserAccount < ActiveRecord::Base
	validates_presence_of :debit_account_no, :amount_deposit, :deposit_type, :maturity_proceeds,
	:mobile_no, :email
	validates_uniqueness_of :email, :debit_account_no, :mobile_no

#calculate SI on maturity
	def self.calculate_amount(details)
		interest = calculate_interest(details)

		unless interest.blank?
			principle = details.amount_deposit
			rate_of_interest = interest
			time = details.maturity_period

			simple_interest = (principle*rate_of_interest*time)/100
			return simple_interest
		end
	end

# calculate interest rate
	def calculate_interest(details)
		days = (details.maturity_period)*365		
		 if (7..14).include?(days)
		   puts "1 to 10"
		 elsif (15..29).include?(days)
		   puts "11 to 20"
		 elsif (30..45).include?(days)
		   puts "11 to 20"
		 elsif (46..60).include?(days)
		   puts "11 to 20"
		 elsif (15..29).include?(days)
		   puts "11 to 20"		   		   		   
		 end
	end
end
