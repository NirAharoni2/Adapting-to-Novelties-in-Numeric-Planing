;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_78)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.9318850761913243)
		(= (value_axe a1) 0.40199091520497277)
		(= (value_axe a2) 0.25536652799555704)

        (= (value_pickaxe p0) 0.6194394316940026)
		(= (value_pickaxe p1) 0.4373657398759203)
		(= (value_pickaxe p2) 0.6135550924831106)

        (= (value_shovel s0) 4.181455394839615)
		(= (value_shovel s1) 3.004578297191367)
		(= (value_shovel s2) 1.2484475773465715)
		(= (value_shovel s3) 6.728434483370376)
		(= (value_shovel s4) 5.612923211161015)

        (= (value_hoe h0) 14.873828543907212)
		(= (value_hoe h1) 19.986817669150824)

        (= (trees_in_map) 38)

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

