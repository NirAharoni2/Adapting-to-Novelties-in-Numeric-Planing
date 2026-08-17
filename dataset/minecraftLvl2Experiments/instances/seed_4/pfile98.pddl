;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_98)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.18229648166845602)
		(= (value_axe a1) 0.04590848459851693)
		(= (value_axe a2) 0.14790976446097315)

        (= (value_pickaxe p0) 0.6950587172257892)
		(= (value_pickaxe p1) 0.9679615284393372)
		(= (value_pickaxe p2) 0.37065863803337895)

        (= (value_shovel s0) 5.117521798269724)
		(= (value_shovel s1) 2.884768533719967)
		(= (value_shovel s2) 1.4376818039110544)
		(= (value_shovel s3) 2.140671406726099)

        (= (value_hoe h0) 22.18848397138279)
		(= (value_hoe h1) 18.81886788947777)
		(= (value_hoe h2) 15.435547795523355)

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

