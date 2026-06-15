;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_78)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.1409583497294037)
		(= (value_axe a1) 0.12630248200774175)

        (= (value_pickaxe p0) 0.4517118337348589)
		(= (value_pickaxe p1) 0.4414701426746298)
		(= (value_pickaxe p2) 0.23057293014009195)
		(= (value_pickaxe p3) 0.41601324649728133)
		(= (value_pickaxe p4) 0.09020543952297033)

        (= (value_shovel s0) 5.282110674816519)
		(= (value_shovel s1) 3.7687928932120442)
		(= (value_shovel s2) 1.7672858357053718)
		(= (value_shovel s3) 4.8997539126028835)

        (= (value_hoe h0) 29.463738995110933)
		(= (value_hoe h1) 25.512578766109065)
		(= (value_hoe h2) 25.290901868465596)

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

