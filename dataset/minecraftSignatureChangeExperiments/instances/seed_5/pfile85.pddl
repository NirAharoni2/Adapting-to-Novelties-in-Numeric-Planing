;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_85)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.5480262008329292)
		(= (value_axe a1) 0.6309676855410772)
		(= (value_axe a2) 0.7414971001608646)
		(= (value_axe a3) 0.6106514925431225)

        (= (value_pickaxe p0) 0.8423247934937703)
		(= (value_pickaxe p1) 0.913396451612199)
		(= (value_pickaxe p2) 0.18066840838395215)

        (= (value_shovel s0) 4.823922792209176)
		(= (value_shovel s1) 2.389386369954681)
		(= (value_shovel s2) 6.016305939332021)

        (= (value_hoe h0) 15.543565213708213)
		(= (value_hoe h1) 26.535870717436598)
		(= (value_hoe h2) 15.41041777721044)
		(= (value_hoe h3) 22.795832060527154)
		(= (value_hoe h4) 16.233831300581585)

        (= (trees_in_map) 23)

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

