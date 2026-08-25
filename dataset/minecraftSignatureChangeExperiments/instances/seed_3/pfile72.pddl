;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_72)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.980475768113432)
		(= (value_axe a1) 0.7394566243424846)
		(= (value_axe a2) 0.48460765501667447)

        (= (value_pickaxe p0) 0.7384823209694978)
		(= (value_pickaxe p1) 0.1494312369580021)

        (= (value_shovel s0) 4.808316799682599)
		(= (value_shovel s1) 5.680449342019517)
		(= (value_shovel s2) 5.226485446954717)

        (= (value_hoe h0) 13.223259785636397)
		(= (value_hoe h1) 12.7357201407521)
		(= (value_hoe h2) 22.496595394598824)

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

