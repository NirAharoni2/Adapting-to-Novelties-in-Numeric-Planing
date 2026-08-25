;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_100)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.3829900721655003)
		(= (value_axe a1) 0.6210005484235239)

        (= (value_pickaxe p0) 0.470693462367089)
		(= (value_pickaxe p1) 0.2432491143317571)
		(= (value_pickaxe p2) 0.7958866959130636)
		(= (value_pickaxe p3) 0.9634237557908538)
		(= (value_pickaxe p4) 0.6452192404426486)

        (= (value_shovel s0) 4.743570183091651)
		(= (value_shovel s1) 2.0827176956737947)

        (= (value_hoe h0) 19.576049661432496)
		(= (value_hoe h1) 25.69721668145104)
		(= (value_hoe h2) 16.317011954554346)

        (= (trees_in_map) 34)

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

