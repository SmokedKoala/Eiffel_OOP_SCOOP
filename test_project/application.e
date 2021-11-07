note
	description: "test_project application root class"
	date: "$Date$"
	revision: "$Revision$"

class
	APPLICATION

inherit
	ARGUMENTS_32

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
			local
				person_a: PERSON
				person_b: PERSON
		do
			--| Add your code here
			-- print ("Hello Eiffel World!%N")
			create person_a.make(1000)
			print ("person_a is created with "+ person_a.cur_money.out + "%N")
			create person_b.make(0)
			print ("person_b is created with "+ person_b.cur_money.out + "%N")
			person_a.lend(500, person_b)
			print ("person_a is lending 500 to person_b%N")
			print ("person_a now has "+ person_a.cur_money.out + "%N")
			print ("person_b now has "+ person_b.cur_money.out + "%N")
		end

end
