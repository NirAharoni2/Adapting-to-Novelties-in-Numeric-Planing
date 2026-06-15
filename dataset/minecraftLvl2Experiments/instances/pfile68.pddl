;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_68)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.7030660071042337)
		(= (value_axe a1) 0.8075759989048453)
		(= (value_axe a2) 0.9002383603785437)
		(= (value_axe a3) 0.6353073971117782)
		(= (value_axe a4) 0.2509026669759853)

        (= (value_pickaxe p0) 0.24765082295747232)
		(= (value_pickaxe p1) 0.7584788922831515)
		(= (value_pickaxe p2) 0.9551924755895674)

        (= (value_shovel s0) 1.5800922977529832)
		(= (value_shovel s1) 4.198197751235784)

        (= (value_hoe h0) 10.006758875380468)
		(= (value_hoe h1) 21.260373307253836)
		(= (value_hoe h2) 12.819707443239274)
		(= (value_hoe h3) 16.569111988745448)

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

