;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_91)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.6643001163427945)
		(= (value_axe a1) 0.31326877447343326)

        (= (value_pickaxe p0) 0.9428972224563343)
		(= (value_pickaxe p1) 0.7096058191786384)
		(= (value_pickaxe p2) 0.7217990074558304)
		(= (value_pickaxe p3) 0.9775939582243481)
		(= (value_pickaxe p4) 0.956446004946)

        (= (value_shovel s0) 1.905907258176875)
		(= (value_shovel s1) 7.287939827899353)
		(= (value_shovel s2) 4.713699099575259)

        (= (value_hoe h0) 22.0809713477916)
		(= (value_hoe h1) 10.418843412775349)
		(= (value_hoe h2) 11.338084131598103)

        (= (trees_in_map) 31)

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

