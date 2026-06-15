;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_89)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.6400093869468422)
		(= (value_axe a1) 0.6920380277549582)

        (= (value_pickaxe p0) 0.5749242476503931)
		(= (value_pickaxe p1) 0.32790665377609574)
		(= (value_pickaxe p2) 0.8824908831282697)

        (= (value_shovel s0) 1.030947316967843)
		(= (value_shovel s1) 5.919195162983503)
		(= (value_shovel s2) 3.4337912741268113)
		(= (value_shovel s3) 1.4600196775649303)
		(= (value_shovel s4) 5.797094035073075)

        (= (value_hoe h0) 25.03791189800339)
		(= (value_hoe h1) 28.912075556963018)

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

