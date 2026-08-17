;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_49)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.19652960932380759)
		(= (value_axe a1) 0.018482027555660308)
		(= (value_axe a2) 0.8282906971412541)
		(= (value_axe a3) 0.9607764729683315)
		(= (value_axe a4) 0.5989112962641971)

        (= (value_pickaxe p0) 0.1363353242587798)
		(= (value_pickaxe p1) 0.23655630705700081)

        (= (value_shovel s0) 7.441258926345388)
		(= (value_shovel s1) 7.562956119571181)
		(= (value_shovel s2) 1.2177001915919758)
		(= (value_shovel s3) 2.2936207405233047)
		(= (value_shovel s4) 4.003134284906488)

        (= (value_hoe h0) 15.33397169878393)
		(= (value_hoe h1) 25.077553190866084)
		(= (value_hoe h2) 17.458843638620067)

        (= (trees_in_map) 26)

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

