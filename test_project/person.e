note
	description: "Summary description for {PERSON}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	PERSON

create
	make

feature {NONE} -- inizialisation
	make (money: INTEGER_32) -- constructor
		require -- require pre-conditions
			valid_money: money >= 0
		do
			cur_money := money
		ensure -- ensure post-conditions
			money_set: cur_money = money
		end

feature -- public
	cur_money: INTEGER_32

	lend (money: INTEGER_32; person: PERSON)
		require -- require pre-conditions
			valid_money: money >= 0
			valid_sum: cur_money - money >= 0
		do
			check person.cur_money + money >= money then -- check assertions
				person.get(money)
			end
			cur_money := cur_money - money

		ensure -- ensure post-conditions
			money_check: cur_money >= 0
		end

	get (money: INTEGER_32)
		require
			valid_money: money >= 0
		do
			cur_money := cur_money + money
		ensure
			money_check: cur_money >= 0
		end

invariant -- class invariant assertions
	valid_cur_money: cur_money >= 0
end
