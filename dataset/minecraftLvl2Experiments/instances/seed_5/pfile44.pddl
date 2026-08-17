;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_44)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.9803565487048445)
		(= (value_axe a1) 0.9620982361913561)
		(= (value_axe a2) 0.13274473461302927)
		(= (value_axe a3) 0.0032838098370298052)
		(= (value_axe a4) 0.3810664412580268)

        (= (value_pickaxe p0) 0.34259924996665814)
		(= (value_pickaxe p1) 0.742426068128605)
		(= (value_pickaxe p2) 0.4906870108827409)
		(= (value_pickaxe p3) 0.9376135596726324)
		(= (value_pickaxe p4) 0.7123505346173632)

        (= (value_shovel s0) 1.1108193607474228)
		(= (value_shovel s1) 6.666828083642538)

        (= (value_hoe h0) 29.981172137579218)
		(= (value_hoe h1) 25.018705537515288)

        (= (trees_in_map) 26)

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

