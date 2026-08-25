;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_19)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe
		s0 s1 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.21923210929748038)
		(= (value_axe a1) 0.6457374231841371)
		(= (value_axe a2) 0.9522450127538733)
		(= (value_axe a3) 0.7124433658633121)
		(= (value_axe a4) 0.1346258893165967)

        (= (value_pickaxe p0) 0.2924929090274416)
		(= (value_pickaxe p1) 0.917997825428623)

        (= (value_shovel s0) 2.0481100401401586)
		(= (value_shovel s1) 5.274283575244266)

        (= (value_hoe h0) 18.27872496873966)
		(= (value_hoe h1) 13.223597864393582)

        (= (trees_in_map) 39)

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

