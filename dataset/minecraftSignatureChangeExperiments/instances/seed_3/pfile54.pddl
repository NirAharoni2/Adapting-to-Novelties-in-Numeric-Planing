;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_54)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.14911064903762872)
		(= (value_axe a1) 0.4562492581678652)
		(= (value_axe a2) 0.3839244708452887)
		(= (value_axe a3) 0.7565999745898756)
		(= (value_axe a4) 0.2955782557486881)

        (= (value_pickaxe p0) 0.749637416365325)
		(= (value_pickaxe p1) 0.7475758208293991)
		(= (value_pickaxe p2) 0.3007355851192055)
		(= (value_pickaxe p3) 0.8587736847999885)
		(= (value_pickaxe p4) 0.959030972182142)

        (= (value_shovel s0) 3.218310131588881)
		(= (value_shovel s1) 6.879624526325637)
		(= (value_shovel s2) 1.9127403003830339)
		(= (value_shovel s3) 5.225107393030855)

        (= (value_hoe h0) 11.138828159763182)
		(= (value_hoe h1) 22.288186084133685)
		(= (value_hoe h2) 13.557668494368896)
		(= (value_hoe h3) 21.46801442115353)
		(= (value_hoe h4) 13.159179519083912)

        (= (trees_in_map) 23)

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

