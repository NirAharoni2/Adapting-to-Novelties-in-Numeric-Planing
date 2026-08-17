;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_3)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.8480440882236346)
		(= (value_axe a1) 0.5083723753327516)
		(= (value_axe a2) 0.413946043131732)
		(= (value_axe a3) 0.5989124721899894)

        (= (value_pickaxe p0) 0.4310430172933071)
		(= (value_pickaxe p1) 0.16132060612160848)

        (= (value_shovel s0) 3.135781175029173)
		(= (value_shovel s1) 6.688146230442345)
		(= (value_shovel s2) 1.3026692835057394)
		(= (value_shovel s3) 1.3242539930245885)

        (= (value_hoe h0) 22.52701491079807)
		(= (value_hoe h1) 15.608664232324374)
		(= (value_hoe h2) 20.692435897588446)
		(= (value_hoe h3) 19.42480172229986)

        (= (trees_in_map) 30)

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

