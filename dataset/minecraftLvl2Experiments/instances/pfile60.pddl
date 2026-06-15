;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_60)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.3745423991900768)
		(= (value_axe a1) 0.20681394443874213)
		(= (value_axe a2) 0.26704425513447505)
		(= (value_axe a3) 0.13038883859045192)
		(= (value_axe a4) 0.7687494263917543)

        (= (value_pickaxe p0) 0.5257000097333713)
		(= (value_pickaxe p1) 0.7062007784963309)
		(= (value_pickaxe p2) 0.7243920572656459)
		(= (value_pickaxe p3) 0.8438685208086982)
		(= (value_pickaxe p4) 0.02301271565938512)

        (= (value_shovel s0) 7.127302669769887)
		(= (value_shovel s1) 1.1649520795986685)

        (= (value_hoe h0) 20.539636102498697)
		(= (value_hoe h1) 13.606276088143932)
		(= (value_hoe h2) 12.460595718204516)

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

