;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_57)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.16979817813035147)
		(= (value_axe a1) 0.502169776314141)
		(= (value_axe a2) 0.935345192054454)

        (= (value_pickaxe p0) 0.34404900604582134)
		(= (value_pickaxe p1) 0.017054268308416054)
		(= (value_pickaxe p2) 0.4338532706188867)

        (= (value_shovel s0) 4.9423106644774535)
		(= (value_shovel s1) 4.518428249305516)
		(= (value_shovel s2) 7.656479427973138)

        (= (value_hoe h0) 14.334172093168142)
		(= (value_hoe h1) 14.795854488370082)
		(= (value_hoe h2) 13.362086477817376)
		(= (value_hoe h3) 21.045365748447125)
		(= (value_hoe h4) 15.026248370994615)

        (= (trees_in_map) 30)

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

