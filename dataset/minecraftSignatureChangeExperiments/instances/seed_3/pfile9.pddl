;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_9)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.438430732561387)
		(= (value_axe a1) 0.8555351939848865)

        (= (value_pickaxe p0) 0.169284232556435)
		(= (value_pickaxe p1) 0.33671023504488073)
		(= (value_pickaxe p2) 0.6502323762924949)
		(= (value_pickaxe p3) 0.8848982719212887)

        (= (value_shovel s0) 4.157715289996558)
		(= (value_shovel s1) 2.5751948990601936)
		(= (value_shovel s2) 1.846435272972005)
		(= (value_shovel s3) 4.707393398158753)

        (= (value_hoe h0) 13.816076117029919)
		(= (value_hoe h1) 26.135544752509148)
		(= (value_hoe h2) 26.76952758056451)

        (= (trees_in_map) 25)

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

