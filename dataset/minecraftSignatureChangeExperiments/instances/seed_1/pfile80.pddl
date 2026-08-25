;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_80)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.7086031300603459)
		(= (value_axe a1) 0.9043995286240599)
		(= (value_axe a2) 0.9523973559386671)
		(= (value_axe a3) 0.41379804971287426)
		(= (value_axe a4) 0.12627597363612753)

        (= (value_pickaxe p0) 0.5508352423172159)
		(= (value_pickaxe p1) 0.6411097441822928)
		(= (value_pickaxe p2) 0.2348515258027737)
		(= (value_pickaxe p3) 0.09882583675629941)

        (= (value_shovel s0) 6.051931562743718)
		(= (value_shovel s1) 1.3298163426134257)

        (= (value_hoe h0) 20.242967352468213)
		(= (value_hoe h1) 25.747992824540976)

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

