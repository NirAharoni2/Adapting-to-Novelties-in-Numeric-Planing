;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_58)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.4110495720019597)
		(= (value_axe a1) 0.6567777472544505)

        (= (value_pickaxe p0) 0.8335816410990964)
		(= (value_pickaxe p1) 0.33416697702703635)
		(= (value_pickaxe p2) 0.9255036003696517)

        (= (value_shovel s0) 5.572043246937929)
		(= (value_shovel s1) 3.413876067623529)
		(= (value_shovel s2) 2.293423896202405)
		(= (value_shovel s3) 7.692022642665424)
		(= (value_shovel s4) 5.597428731916157)

        (= (value_hoe h0) 10.859279800244284)
		(= (value_hoe h1) 23.69203164453041)
		(= (value_hoe h2) 17.559216938150577)

        (= (trees_in_map) 33)

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

