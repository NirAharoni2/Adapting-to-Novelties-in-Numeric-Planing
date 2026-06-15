;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_45)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.5492632158140002)
		(= (value_axe a1) 0.5264709456717583)
		(= (value_axe a2) 0.8331602454395474)
		(= (value_axe a3) 0.0641237789767457)
		(= (value_axe a4) 0.8941923448547463)

        (= (value_pickaxe p0) 0.12776438956204061)
		(= (value_pickaxe p1) 0.3116319600393712)
		(= (value_pickaxe p2) 0.7202964288982445)
		(= (value_pickaxe p3) 0.7457171255201587)
		(= (value_pickaxe p4) 0.09380623936424581)

        (= (value_shovel s0) 7.886082845425789)
		(= (value_shovel s1) 5.787098473498995)
		(= (value_shovel s2) 3.3619739605485544)
		(= (value_shovel s3) 7.541938173340507)

        (= (value_hoe h0) 17.929329270942446)
		(= (value_hoe h1) 10.574667239437169)
		(= (value_hoe h2) 20.517692417662097)

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

