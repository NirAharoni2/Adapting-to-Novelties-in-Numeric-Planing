;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_94)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.5847992492067757)
		(= (value_axe a1) 0.496435577502199)
		(= (value_axe a2) 0.8592999203776257)
		(= (value_axe a3) 0.5188636368220743)

        (= (value_pickaxe p0) 0.34317416131954326)
		(= (value_pickaxe p1) 0.06438855232088148)
		(= (value_pickaxe p2) 0.5528820606711864)
		(= (value_pickaxe p3) 0.3634802541124589)

        (= (value_shovel s0) 4.75615030913764)
		(= (value_shovel s1) 3.43194937521942)
		(= (value_shovel s2) 1.0481799859825855)

        (= (value_hoe h0) 10.755960862909024)
		(= (value_hoe h1) 13.157863963644068)
		(= (value_hoe h2) 11.8789197759036)
		(= (value_hoe h3) 27.028076106993733)
		(= (value_hoe h4) 21.61491003992434)

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

