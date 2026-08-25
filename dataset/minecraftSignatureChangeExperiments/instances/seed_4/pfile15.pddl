;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_15)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.22920898174248583)
		(= (value_axe a1) 0.18041335780773127)
		(= (value_axe a2) 0.8639491768680554)

        (= (value_pickaxe p0) 0.0016925012821953356)
		(= (value_pickaxe p1) 0.05291939980935212)
		(= (value_pickaxe p2) 0.907637091824953)
		(= (value_pickaxe p3) 0.544084771817852)
		(= (value_pickaxe p4) 0.909151632093111)

        (= (value_shovel s0) 6.4771719379712405)
		(= (value_shovel s1) 4.978373729732281)
		(= (value_shovel s2) 7.557157852297147)
		(= (value_shovel s3) 4.54662749549706)

        (= (value_hoe h0) 18.81503173902623)
		(= (value_hoe h1) 22.349187499592524)
		(= (value_hoe h2) 17.836122980813318)
		(= (value_hoe h3) 15.03392454550298)

        (= (trees_in_map) 39)

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

