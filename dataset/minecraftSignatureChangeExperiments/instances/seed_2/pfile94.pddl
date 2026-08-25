;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_94)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.3567742607787928)
		(= (value_axe a1) 0.4761698868739942)

        (= (value_pickaxe p0) 0.8110822609079454)
		(= (value_pickaxe p1) 0.9130163802258028)
		(= (value_pickaxe p2) 0.446799857574544)
		(= (value_pickaxe p3) 0.6366847642068008)

        (= (value_shovel s0) 2.935345663184242)
		(= (value_shovel s1) 5.123107543785498)
		(= (value_shovel s2) 1.6280197887757741)

        (= (value_hoe h0) 20.508366755425847)
		(= (value_hoe h1) 12.94460092911724)
		(= (value_hoe h2) 21.123869008388375)

        (= (trees_in_map) 27)

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

