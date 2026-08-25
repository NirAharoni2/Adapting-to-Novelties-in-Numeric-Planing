;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_21)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.32204215588119356)
		(= (value_axe a1) 0.7742045511588622)
		(= (value_axe a2) 0.14361013038767068)

        (= (value_pickaxe p0) 0.9912179313417658)
		(= (value_pickaxe p1) 0.4795898623875432)
		(= (value_pickaxe p2) 0.599000641746499)

        (= (value_shovel s0) 4.276370704648041)
		(= (value_shovel s1) 6.8422821485421315)
		(= (value_shovel s2) 6.751305837681712)
		(= (value_shovel s3) 4.899848730820354)

        (= (value_hoe h0) 19.62598636638961)
		(= (value_hoe h1) 24.41418037896969)
		(= (value_hoe h2) 27.132978878551018)

        (= (trees_in_map) 32)

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

