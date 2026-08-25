;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_87)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.5030402294118934)
		(= (value_axe a1) 0.17524957930895613)

        (= (value_pickaxe p0) 0.43139444750868006)
		(= (value_pickaxe p1) 0.8081881300670399)
		(= (value_pickaxe p2) 0.6767601867766545)

        (= (value_shovel s0) 2.1383727004994366)
		(= (value_shovel s1) 3.6830840703441154)
		(= (value_shovel s2) 6.781279459339748)
		(= (value_shovel s3) 6.993755846688606)

        (= (value_hoe h0) 28.478121344832722)
		(= (value_hoe h1) 21.320724131780857)
		(= (value_hoe h2) 25.70857429808884)
		(= (value_hoe h3) 23.203726866988852)

        (= (trees_in_map) 29)

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

