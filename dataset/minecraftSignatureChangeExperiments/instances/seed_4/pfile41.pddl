;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_41)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.9485867525053849)
		(= (value_axe a1) 0.43231919624391846)
		(= (value_axe a2) 0.5077969960052139)
		(= (value_axe a3) 0.34369873844617427)
		(= (value_axe a4) 0.043642342806793244)

        (= (value_pickaxe p0) 0.18470383476764318)
		(= (value_pickaxe p1) 0.40638788793018543)
		(= (value_pickaxe p2) 0.3924484773984631)
		(= (value_pickaxe p3) 0.1639348300857505)
		(= (value_pickaxe p4) 0.6838185022568214)

        (= (value_shovel s0) 1.3098640136720685)
		(= (value_shovel s1) 2.558524227320854)
		(= (value_shovel s2) 3.617734956757706)

        (= (value_hoe h0) 20.16800349197279)
		(= (value_hoe h1) 27.567201358403224)
		(= (value_hoe h2) 12.652654051865111)
		(= (value_hoe h3) 16.928313577712146)
		(= (value_hoe h4) 11.93276237835197)

        (= (trees_in_map) 32)

		(= (count_log_in_inventory) 0)

        (= (count_planks_in_inventory) 0)

        (= (count_stick_in_inventory) 0)

		(= (count_sack_polyisoprene_pellets_in_inventory) 0)

        (= (count_tree_tap_in_inventory) 0)

        (= (count_pogo_stick) 0)
	)
	(:goal
		(and
			(= (count_pogo_stick) 1)
		)
	)
)

