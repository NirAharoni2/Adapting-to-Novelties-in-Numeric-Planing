;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_56)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.1481002815408231)
		(= (value_axe a1) 0.623312055439497)
		(= (value_axe a2) 0.5138418947303364)
		(= (value_axe a3) 0.7718612190564197)

        (= (value_pickaxe p0) 0.06285513559842115)
		(= (value_pickaxe p1) 0.6715515755702917)
		(= (value_pickaxe p2) 0.827043008506931)
		(= (value_pickaxe p3) 0.0388162203469109)

        (= (value_shovel s0) 5.785269461459887)
		(= (value_shovel s1) 2.9598306966884382)

        (= (value_hoe h0) 24.886572837981017)
		(= (value_hoe h1) 29.57357835270178)
		(= (value_hoe h2) 10.054452185509156)

        (= (trees_in_map) 33)

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

