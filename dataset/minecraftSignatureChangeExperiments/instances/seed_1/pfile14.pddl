;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_14)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.7855121343445666)
		(= (value_axe a1) 0.586792874492806)

        (= (value_pickaxe p0) 0.16201983478336168)
		(= (value_pickaxe p1) 0.45090861743229205)

        (= (value_shovel s0) 5.766230282857582)
		(= (value_shovel s1) 2.1126133293512828)
		(= (value_shovel s2) 6.915132311879389)

        (= (value_hoe h0) 18.70205669265455)
		(= (value_hoe h1) 29.293875899654218)
		(= (value_hoe h2) 26.12974732671142)

        (= (trees_in_map) 37)

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

