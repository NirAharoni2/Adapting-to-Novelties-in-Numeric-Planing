;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_72)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.8049928644711422)
		(= (value_axe a1) 0.9242871701836137)
		(= (value_axe a2) 0.73013319010966)

        (= (value_pickaxe p0) 0.8284448239605833)
		(= (value_pickaxe p1) 0.00753732111397265)
		(= (value_pickaxe p2) 0.20703175882813363)

        (= (value_shovel s0) 1.3958347851425392)
		(= (value_shovel s1) 4.095777679649482)
		(= (value_shovel s2) 4.5162518718387075)
		(= (value_shovel s3) 2.558669123382965)

        (= (value_hoe h0) 14.847584342848148)
		(= (value_hoe h1) 11.538890307018907)
		(= (value_hoe h2) 10.538977997339241)
		(= (value_hoe h3) 17.735041694610054)
		(= (value_hoe h4) 18.31550219108256)

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

