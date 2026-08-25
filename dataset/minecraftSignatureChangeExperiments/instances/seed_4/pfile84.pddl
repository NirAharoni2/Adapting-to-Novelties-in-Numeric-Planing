;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_84)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.7905005063274044)
		(= (value_axe a1) 0.1935444618447758)
		(= (value_axe a2) 0.9509755800813563)

        (= (value_pickaxe p0) 0.660257426279977)
		(= (value_pickaxe p1) 0.6292601145058304)
		(= (value_pickaxe p2) 0.8481362411608593)
		(= (value_pickaxe p3) 0.25468746065909964)
		(= (value_pickaxe p4) 0.9425664155729603)

        (= (value_shovel s0) 1.3876707384162574)
		(= (value_shovel s1) 1.875729414471396)

        (= (value_hoe h0) 26.47065158408041)
		(= (value_hoe h1) 26.64374789615502)
		(= (value_hoe h2) 27.3245534475186)
		(= (value_hoe h3) 26.330286528657698)
		(= (value_hoe h4) 25.524712185584324)

        (= (trees_in_map) 20)

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

