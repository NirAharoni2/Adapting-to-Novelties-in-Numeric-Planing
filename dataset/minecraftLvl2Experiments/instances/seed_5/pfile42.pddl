;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_42)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.85033761313549)
		(= (value_axe a1) 0.6451813309202308)
		(= (value_axe a2) 0.9267134659133726)

        (= (value_pickaxe p0) 0.22906916509156294)
		(= (value_pickaxe p1) 0.696800989026477)

        (= (value_shovel s0) 6.885035072153403)
		(= (value_shovel s1) 4.336968003804767)
		(= (value_shovel s2) 1.7055751235120353)
		(= (value_shovel s3) 2.3546920471376644)

        (= (value_hoe h0) 13.132922815025022)
		(= (value_hoe h1) 11.856597264965774)
		(= (value_hoe h2) 13.039129282190363)

        (= (trees_in_map) 39)

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

