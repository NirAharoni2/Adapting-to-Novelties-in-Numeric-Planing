;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_31)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.29687625656326855)
		(= (value_axe a1) 0.7350864389049783)
		(= (value_axe a2) 0.9963662983104843)
		(= (value_axe a3) 0.5562422742676781)

        (= (value_pickaxe p0) 0.3558515802745992)
		(= (value_pickaxe p1) 0.7398449050792595)
		(= (value_pickaxe p2) 0.3925591301995863)
		(= (value_pickaxe p3) 0.3997156409350259)
		(= (value_pickaxe p4) 0.4836240022612186)

        (= (value_shovel s0) 2.816652887068875)
		(= (value_shovel s1) 5.272811064925081)

        (= (value_hoe h0) 24.321045908677362)
		(= (value_hoe h1) 15.175350750057161)
		(= (value_hoe h2) 22.199004695816384)

        (= (trees_in_map) 27)

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

