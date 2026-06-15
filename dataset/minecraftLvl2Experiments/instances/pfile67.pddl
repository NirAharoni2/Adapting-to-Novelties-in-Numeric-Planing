;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_67)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.2462748319423247)
		(= (value_axe a1) 0.8589132613513878)
		(= (value_axe a2) 0.6251621054503828)
		(= (value_axe a3) 0.9441261970477578)

        (= (value_pickaxe p0) 0.874922509892838)
		(= (value_pickaxe p1) 0.7443031552432546)
		(= (value_pickaxe p2) 0.668794643618193)
		(= (value_pickaxe p3) 0.015393614938989164)

        (= (value_shovel s0) 4.0217676216048135)
		(= (value_shovel s1) 5.711300362890644)

        (= (value_hoe h0) 19.31441273436299)
		(= (value_hoe h1) 29.113520796948706)
		(= (value_hoe h2) 26.977503863392393)

        (= (trees_in_map) 31)

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

