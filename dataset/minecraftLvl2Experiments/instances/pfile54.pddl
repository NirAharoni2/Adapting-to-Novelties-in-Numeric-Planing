;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_54)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.15504917842915655)
		(= (value_axe a1) 0.8570478722427874)

        (= (value_pickaxe p0) 0.7841629698820646)
		(= (value_pickaxe p1) 0.36510716271926813)

        (= (value_shovel s0) 2.109446428784677)
		(= (value_shovel s1) 1.9953922069668386)
		(= (value_shovel s2) 1.455593677949125)
		(= (value_shovel s3) 5.309041516516526)

        (= (value_hoe h0) 22.755176480565698)
		(= (value_hoe h1) 19.775232167778228)
		(= (value_hoe h2) 15.35401656750677)
		(= (value_hoe h3) 20.696551014394224)
		(= (value_hoe h4) 16.77713778806112)

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

