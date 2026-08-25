;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_79)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.21393738795923867)
		(= (value_axe a1) 0.8960099487021844)

        (= (value_pickaxe p0) 0.14821622214901997)
		(= (value_pickaxe p1) 0.10788676443678502)
		(= (value_pickaxe p2) 0.31720096518691276)

        (= (value_shovel s0) 4.56048528064797)
		(= (value_shovel s1) 6.750366006197227)
		(= (value_shovel s2) 7.969557586237142)
		(= (value_shovel s3) 6.963087773460271)

        (= (value_hoe h0) 22.176751996350994)
		(= (value_hoe h1) 10.752038018546122)
		(= (value_hoe h2) 11.2692898165508)
		(= (value_hoe h3) 22.614721543587493)

        (= (trees_in_map) 28)

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

