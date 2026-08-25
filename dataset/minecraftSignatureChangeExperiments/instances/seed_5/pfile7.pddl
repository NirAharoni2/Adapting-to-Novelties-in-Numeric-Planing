;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_7)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.4345551906004371)
		(= (value_axe a1) 0.14924534454025784)
		(= (value_axe a2) 0.8447338970053629)

        (= (value_pickaxe p0) 0.2948129262119711)
		(= (value_pickaxe p1) 0.45315491349997616)
		(= (value_pickaxe p2) 0.999299948069468)
		(= (value_pickaxe p3) 0.8522526708937429)
		(= (value_pickaxe p4) 0.9760075697466309)

        (= (value_shovel s0) 4.174779927141364)
		(= (value_shovel s1) 4.41711298988665)

        (= (value_hoe h0) 24.590100395337082)
		(= (value_hoe h1) 19.580849002903033)
		(= (value_hoe h2) 15.8204523429395)

        (= (trees_in_map) 32)

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

