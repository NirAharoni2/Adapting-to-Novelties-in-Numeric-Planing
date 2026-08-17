;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_56)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.4222645485970449)
		(= (value_axe a1) 0.004236644311168547)

        (= (value_pickaxe p0) 0.0200516046712097)
		(= (value_pickaxe p1) 0.30530459301328705)
		(= (value_pickaxe p2) 0.6153742314894979)

        (= (value_shovel s0) 1.5919580549102617)
		(= (value_shovel s1) 2.571572407791077)
		(= (value_shovel s2) 5.7648338778284725)

        (= (value_hoe h0) 29.699838885847146)
		(= (value_hoe h1) 16.82145614461217)
		(= (value_hoe h2) 22.022779691035346)
		(= (value_hoe h3) 20.36859666992374)

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

