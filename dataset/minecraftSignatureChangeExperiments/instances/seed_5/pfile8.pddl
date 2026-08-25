;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_8)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.626964970954839)
		(= (value_axe a1) 0.4993224506661216)
		(= (value_axe a2) 0.3384787602731607)

        (= (value_pickaxe p0) 0.08913741627232741)
		(= (value_pickaxe p1) 0.2723101341365193)

        (= (value_shovel s0) 6.474132797395465)
		(= (value_shovel s1) 7.071707647441114)
		(= (value_shovel s2) 3.5292836311590783)
		(= (value_shovel s3) 6.502158057436812)
		(= (value_shovel s4) 6.424286644830492)

        (= (value_hoe h0) 23.89193498901789)
		(= (value_hoe h1) 23.280368899452466)
		(= (value_hoe h2) 25.19277472878979)

        (= (trees_in_map) 31)

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

