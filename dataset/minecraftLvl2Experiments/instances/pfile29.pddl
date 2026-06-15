;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_29)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.7170478994711598)
		(= (value_axe a1) 0.45921989874539526)
		(= (value_axe a2) 0.09882002138568224)
		(= (value_axe a3) 0.08416054559016484)

        (= (value_pickaxe p0) 0.6103443074223196)
		(= (value_pickaxe p1) 0.7957873236540237)
		(= (value_pickaxe p2) 0.8778747224709682)
		(= (value_pickaxe p3) 0.5973934440414362)
		(= (value_pickaxe p4) 0.8105284234130274)

        (= (value_shovel s0) 4.469550159513338)
		(= (value_shovel s1) 5.298529565271458)
		(= (value_shovel s2) 5.629348946190528)

        (= (value_hoe h0) 12.948816518170965)
		(= (value_hoe h1) 25.641893015637006)
		(= (value_hoe h2) 23.966333999288466)
		(= (value_hoe h3) 26.78936261943479)
		(= (value_hoe h4) 14.315876687930558)

        (= (trees_in_map) 27)

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

