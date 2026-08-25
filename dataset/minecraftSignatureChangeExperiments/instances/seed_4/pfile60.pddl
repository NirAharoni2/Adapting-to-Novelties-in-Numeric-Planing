;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_60)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.22022410655820124)
		(= (value_axe a1) 0.6098479953993364)
		(= (value_axe a2) 0.5983860051333298)
		(= (value_axe a3) 0.9903650824587256)
		(= (value_axe a4) 0.9424068994841718)

        (= (value_pickaxe p0) 0.421479790286434)
		(= (value_pickaxe p1) 0.44861326581697925)
		(= (value_pickaxe p2) 0.6517822028420438)
		(= (value_pickaxe p3) 0.5047025991230387)

        (= (value_shovel s0) 5.113292924965442)
		(= (value_shovel s1) 3.809109960148922)
		(= (value_shovel s2) 7.019914431379642)
		(= (value_shovel s3) 7.245291642711659)

        (= (value_hoe h0) 25.809429632545)
		(= (value_hoe h1) 24.983964285085843)
		(= (value_hoe h2) 27.756868874304338)

        (= (trees_in_map) 28)

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

