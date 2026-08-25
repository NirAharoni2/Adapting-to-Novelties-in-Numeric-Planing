;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_62)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.7585339822620454)
		(= (value_axe a1) 0.6048636145766237)
		(= (value_axe a2) 0.1341962709721629)
		(= (value_axe a3) 0.2027215544666865)

        (= (value_pickaxe p0) 0.6949903290730198)
		(= (value_pickaxe p1) 0.7290226948934593)
		(= (value_pickaxe p2) 0.10262054536649856)
		(= (value_pickaxe p3) 0.9975139963180167)
		(= (value_pickaxe p4) 0.1333839762936032)

        (= (value_shovel s0) 2.1739180795704156)
		(= (value_shovel s1) 1.628143586482334)
		(= (value_shovel s2) 4.124740934365615)
		(= (value_shovel s3) 5.337392093597033)
		(= (value_shovel s4) 7.0011094118481285)

        (= (value_hoe h0) 13.263420731113689)
		(= (value_hoe h1) 23.974590075286645)
		(= (value_hoe h2) 12.104481056026543)
		(= (value_hoe h3) 21.607621593031972)
		(= (value_hoe h4) 15.037560407478288)

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

