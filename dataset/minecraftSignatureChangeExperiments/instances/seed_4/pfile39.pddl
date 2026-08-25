;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_39)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.580599282368748)
		(= (value_axe a1) 0.570164039484876)
		(= (value_axe a2) 0.19388102189812528)
		(= (value_axe a3) 0.9576778902640325)
		(= (value_axe a4) 0.6838288871470225)

        (= (value_pickaxe p0) 0.725617368506498)
		(= (value_pickaxe p1) 0.9550403483000026)
		(= (value_pickaxe p2) 0.45167685258057344)

        (= (value_shovel s0) 3.3290014425938397)
		(= (value_shovel s1) 3.1282387012501207)
		(= (value_shovel s2) 3.2138931356674147)
		(= (value_shovel s3) 3.1010885831080115)
		(= (value_shovel s4) 3.212695091520196)

        (= (value_hoe h0) 14.181629945843587)
		(= (value_hoe h1) 19.679833444542744)

        (= (trees_in_map) 29)

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

