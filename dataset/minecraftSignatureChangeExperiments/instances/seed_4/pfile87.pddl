;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_87)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.25184195923224373)
		(= (value_axe a1) 0.29538787171541137)
		(= (value_axe a2) 0.5694883590404352)

        (= (value_pickaxe p0) 0.08445726839652412)
		(= (value_pickaxe p1) 0.5062055827016764)
		(= (value_pickaxe p2) 0.576207453243931)
		(= (value_pickaxe p3) 0.43199075197726633)

        (= (value_shovel s0) 6.185347521548431)
		(= (value_shovel s1) 5.66677185148101)
		(= (value_shovel s2) 5.065754889238227)
		(= (value_shovel s3) 6.711809880119633)

        (= (value_hoe h0) 12.859925690367453)
		(= (value_hoe h1) 13.567203740081418)
		(= (value_hoe h2) 15.670839418488258)
		(= (value_hoe h3) 13.502300916771375)

        (= (trees_in_map) 24)

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

