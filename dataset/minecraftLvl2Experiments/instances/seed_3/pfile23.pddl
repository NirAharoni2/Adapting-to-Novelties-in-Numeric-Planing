;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_23)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.7289684325374479)
		(= (value_axe a1) 0.08592541603719839)
		(= (value_axe a2) 0.09264233160149904)
		(= (value_axe a3) 0.8339291432034306)

        (= (value_pickaxe p0) 0.2917633878896052)
		(= (value_pickaxe p1) 0.3566610846844087)
		(= (value_pickaxe p2) 0.5803000460125052)

        (= (value_shovel s0) 5.728551532003986)
		(= (value_shovel s1) 1.0481858715838877)
		(= (value_shovel s2) 3.343613559903855)
		(= (value_shovel s3) 4.0535493914613845)
		(= (value_shovel s4) 4.401303705168992)

        (= (value_hoe h0) 14.20192534391634)
		(= (value_hoe h1) 21.702107897753898)

        (= (trees_in_map) 35)

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

