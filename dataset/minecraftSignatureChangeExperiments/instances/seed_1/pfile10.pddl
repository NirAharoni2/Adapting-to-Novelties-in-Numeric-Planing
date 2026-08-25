;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_10)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.37796883434360806)
		(= (value_axe a1) 0.34693088456262167)
		(= (value_axe a2) 0.2057617572947047)

        (= (value_pickaxe p0) 0.6741530142468641)
		(= (value_pickaxe p1) 0.4329501211003163)
		(= (value_pickaxe p2) 0.1941186449851896)
		(= (value_pickaxe p3) 0.10442422284151531)
		(= (value_pickaxe p4) 0.6659575282786826)

        (= (value_shovel s0) 3.072508711582061)
		(= (value_shovel s1) 4.498599455657612)
		(= (value_shovel s2) 3.277419584131974)

        (= (value_hoe h0) 27.432430148471102)
		(= (value_hoe h1) 27.993565392695622)

        (= (trees_in_map) 20)

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

