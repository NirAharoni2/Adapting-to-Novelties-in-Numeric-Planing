;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_61)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.5372792702342215)
		(= (value_axe a1) 0.009698375461110187)
		(= (value_axe a2) 0.8152265745620081)

        (= (value_pickaxe p0) 0.1325773848556454)
		(= (value_pickaxe p1) 0.7469885987185967)
		(= (value_pickaxe p2) 0.942291772982568)
		(= (value_pickaxe p3) 0.10114309534079435)

        (= (value_shovel s0) 1.21256342123842)
		(= (value_shovel s1) 4.023677275999726)
		(= (value_shovel s2) 5.754745132892985)
		(= (value_shovel s3) 2.932439502587064)

        (= (value_hoe h0) 17.402882338826494)
		(= (value_hoe h1) 18.12267610516833)

        (= (trees_in_map) 34)

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

