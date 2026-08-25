;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_100)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.3118396000506821)
		(= (value_axe a1) 0.3567419508499603)

        (= (value_pickaxe p0) 0.7432024518064902)
		(= (value_pickaxe p1) 0.13200193835618756)
		(= (value_pickaxe p2) 0.912119253960579)
		(= (value_pickaxe p3) 0.17278351489209043)
		(= (value_pickaxe p4) 0.99136995131403)

        (= (value_shovel s0) 6.384121516979403)
		(= (value_shovel s1) 5.708117050629952)

        (= (value_hoe h0) 15.221610594333052)
		(= (value_hoe h1) 14.801565283760214)
		(= (value_hoe h2) 23.525471368116193)
		(= (value_hoe h3) 21.737948173888675)

        (= (trees_in_map) 35)

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

