;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_25)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.5423394307527486)
		(= (value_axe a1) 0.2732256972129319)
		(= (value_axe a2) 0.585738083402959)

        (= (value_pickaxe p0) 0.25088222945000915)
		(= (value_pickaxe p1) 0.6835271525859573)
		(= (value_pickaxe p2) 0.7910907183680019)

        (= (value_shovel s0) 6.660582341146652)
		(= (value_shovel s1) 7.815312766848928)
		(= (value_shovel s2) 4.817639026781082)
		(= (value_shovel s3) 4.4356649588031)

        (= (value_hoe h0) 27.11395399597287)
		(= (value_hoe h1) 25.381347717187587)
		(= (value_hoe h2) 21.410892587740705)

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

