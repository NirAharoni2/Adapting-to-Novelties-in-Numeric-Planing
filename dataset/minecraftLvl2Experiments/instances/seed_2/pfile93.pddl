;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_93)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.3050289604914417)
		(= (value_axe a1) 0.09575856676497785)
		(= (value_axe a2) 0.43401079696693745)

        (= (value_pickaxe p0) 0.9676310397426616)
		(= (value_pickaxe p1) 0.09379430264901101)
		(= (value_pickaxe p2) 0.7056565685620081)
		(= (value_pickaxe p3) 0.19518888310419502)

        (= (value_shovel s0) 4.968991860245294)
		(= (value_shovel s1) 2.721412731073506)
		(= (value_shovel s2) 4.3671935157629695)

        (= (value_hoe h0) 23.03557399172369)
		(= (value_hoe h1) 11.449208131050593)

        (= (trees_in_map) 37)

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

