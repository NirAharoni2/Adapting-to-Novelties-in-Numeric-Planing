;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_59)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.7239878160196962)
		(= (value_axe a1) 0.26067627295739004)

        (= (value_pickaxe p0) 0.4083486710324258)
		(= (value_pickaxe p1) 0.32931208522973177)
		(= (value_pickaxe p2) 0.0959258922333236)
		(= (value_pickaxe p3) 0.06442235628270487)
		(= (value_pickaxe p4) 0.716860162743456)

        (= (value_shovel s0) 3.873735979142654)
		(= (value_shovel s1) 7.087744234948072)
		(= (value_shovel s2) 1.439012784236858)

        (= (value_hoe h0) 16.028554002777664)
		(= (value_hoe h1) 13.602878457215331)
		(= (value_hoe h2) 28.868246688620953)
		(= (value_hoe h3) 25.81075604814727)

        (= (trees_in_map) 36)

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

