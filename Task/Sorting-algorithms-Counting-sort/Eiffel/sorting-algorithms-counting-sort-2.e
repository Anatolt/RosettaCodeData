class
	APPLICATION
inherit
	ARGUMENTS
create
        make
feature
	make
	do
		create test.make_filled(0,0,5)
		test[0]:=-7
		test[1]:=4
		test[2]:=2
		test[3]:=6
		test[4]:=1
		test[5]:=3
		across test as t  loop io.put_string (t.item.out + "%T")  end
		create count
		test:=count.sort (test, -7, 6)
		across test as ar loop io.put_string (ar.item.out+"%T")  end
	end
	count: COUNTING_SORT
	test: ARRAY[INTEGER]
end
