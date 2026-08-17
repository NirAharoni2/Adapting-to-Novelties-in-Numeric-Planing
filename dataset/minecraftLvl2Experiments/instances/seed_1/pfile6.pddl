;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_6)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.4811018174142402)
		(= (value_axe a1) 0.36473604716360064)
		(= (value_axe a2) 0.5544011905777411)

        (= (value_pickaxe p0) 0.9410135113054549)
		(= (value_pickaxe p1) 0.4134000426897787)
		(= (value_pickaxe p2) 0.813351507162973)

        (= (value_shovel s0) 3.9009716318737375)
		(= (value_shovel s1) 1.0110932496886815)
		(= (value_shovel s2) 4.780766899618701)
		(= (value_shovel s3) 6.5051106980977)
		(= (value_shovel s4) 3.3179621637391117)

        (= (value_hoe h0) 21.997103695269672)
		(= (value_hoe h1) 26.091389690280707)

        (= (trees_in_map) 40)

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

