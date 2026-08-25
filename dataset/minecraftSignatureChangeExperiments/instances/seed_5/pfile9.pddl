;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_9)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.9568854268308546)
		(= (value_axe a1) 0.3400733891851615)
		(= (value_axe a2) 0.17864939257994905)
		(= (value_axe a3) 0.8518219963578928)

        (= (value_pickaxe p0) 0.47430384566628103)
		(= (value_pickaxe p1) 0.7737170178494772)
		(= (value_pickaxe p2) 0.3259049331519225)
		(= (value_pickaxe p3) 0.27368510859414175)
		(= (value_pickaxe p4) 0.28882651639491064)

        (= (value_shovel s0) 4.5024438689057416)
		(= (value_shovel s1) 5.715466987962884)
		(= (value_shovel s2) 3.4959944370030724)
		(= (value_shovel s3) 2.91712955764265)

        (= (value_hoe h0) 16.911636700902484)
		(= (value_hoe h1) 28.750303660063246)
		(= (value_hoe h2) 18.169380478567653)
		(= (value_hoe h3) 28.446664637756285)

        (= (trees_in_map) 25)

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

