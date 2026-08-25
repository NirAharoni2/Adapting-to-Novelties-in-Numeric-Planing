;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_12)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.0006606157907871335)
		(= (value_axe a1) 0.4053757485159233)

        (= (value_pickaxe p0) 0.2785280708659792)
		(= (value_pickaxe p1) 0.4100423147261235)
		(= (value_pickaxe p2) 0.11507443851869803)

        (= (value_shovel s0) 6.819590418269494)
		(= (value_shovel s1) 3.6171575915112695)
		(= (value_shovel s2) 1.2524347741121835)

        (= (value_hoe h0) 22.271281823721893)
		(= (value_hoe h1) 11.896433278215127)
		(= (value_hoe h2) 20.904417263365936)
		(= (value_hoe h3) 16.787466250524357)

        (= (trees_in_map) 38)

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

