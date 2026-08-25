;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_77)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.6214967891924711)
		(= (value_axe a1) 0.05819728008283187)

        (= (value_pickaxe p0) 0.5082029019969412)
		(= (value_pickaxe p1) 0.48005323041733805)

        (= (value_shovel s0) 1.0937231506074108)
		(= (value_shovel s1) 3.411068079818602)

        (= (value_hoe h0) 15.926816657889812)
		(= (value_hoe h1) 26.334767710065666)
		(= (value_hoe h2) 19.828389480776437)
		(= (value_hoe h3) 25.574383334072298)
		(= (value_hoe h4) 26.035769601574398)

        (= (trees_in_map) 29)

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

