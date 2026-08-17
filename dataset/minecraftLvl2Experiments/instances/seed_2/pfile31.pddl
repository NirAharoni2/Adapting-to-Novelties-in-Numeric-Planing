;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_53)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.1428947881232162)
		(= (value_axe a1) 0.8798110327046847)

        (= (value_pickaxe p0) 0.7703251127445887)
		(= (value_pickaxe p1) 0.910371996165695)

        (= (value_shovel s0) 5.485252704025545)
		(= (value_shovel s1) 2.868488043803715)
		(= (value_shovel s2) 7.090460944073426)
		(= (value_shovel s3) 4.764244463465974)
		(= (value_shovel s4) 7.382888172973766)

        (= (value_hoe h0) 27.93281414010789)
		(= (value_hoe h1) 24.149352580142065)
		(= (value_hoe h2) 15.847108555806102)

        (= (trees_in_map) 20)

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

