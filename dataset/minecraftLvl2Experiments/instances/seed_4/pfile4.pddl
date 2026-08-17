;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_4)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.9135318190058366)
		(= (value_axe a1) 0.6350191059162094)
		(= (value_axe a2) 0.44115195629227777)

        (= (value_pickaxe p0) 0.18370364871495026)
		(= (value_pickaxe p1) 0.4359243344287773)
		(= (value_pickaxe p2) 0.5887686783125169)

        (= (value_shovel s0) 5.4410253011413126)
		(= (value_shovel s1) 2.390985394494278)

        (= (value_hoe h0) 16.470684275177035)
		(= (value_hoe h1) 26.7885267826334)
		(= (value_hoe h2) 24.163249765168047)
		(= (value_hoe h3) 15.54957580047283)
		(= (value_hoe h4) 21.64400929442526)

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

