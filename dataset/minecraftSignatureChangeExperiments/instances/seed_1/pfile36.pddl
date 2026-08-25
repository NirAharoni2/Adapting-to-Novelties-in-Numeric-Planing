;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_36)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.8763074328363777)
		(= (value_axe a1) 0.5425755162322498)

        (= (value_pickaxe p0) 0.5647441102526328)
		(= (value_pickaxe p1) 0.25416866041704156)

        (= (value_shovel s0) 1.5566291379945345)
		(= (value_shovel s1) 5.5650770431746714)
		(= (value_shovel s2) 3.12381091224097)
		(= (value_shovel s3) 1.1010904852173287)
		(= (value_shovel s4) 4.758864249482469)

        (= (value_hoe h0) 20.498077100608356)
		(= (value_hoe h1) 12.578505135001954)
		(= (value_hoe h2) 28.667612414597013)

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

