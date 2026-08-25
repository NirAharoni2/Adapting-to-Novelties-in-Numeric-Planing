;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_71)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.9258858127001248)
		(= (value_axe a1) 0.11538058126411044)
		(= (value_axe a2) 0.796877576246424)

        (= (value_pickaxe p0) 0.29120799992478796)
		(= (value_pickaxe p1) 0.03167924877320116)
		(= (value_pickaxe p2) 0.847205317347353)
		(= (value_pickaxe p3) 0.14561334973189255)
		(= (value_pickaxe p4) 0.871338179384941)

        (= (value_shovel s0) 4.5692320277298535)
		(= (value_shovel s1) 3.4068251402882406)
		(= (value_shovel s2) 5.556987099493019)

        (= (value_hoe h0) 17.638008039178903)
		(= (value_hoe h1) 29.136026619560454)
		(= (value_hoe h2) 10.41140710287895)

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

