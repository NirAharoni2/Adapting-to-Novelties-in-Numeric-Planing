;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_63)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.5994163512783658)
		(= (value_axe a1) 0.33548597361792665)

        (= (value_pickaxe p0) 0.5043033634342025)
		(= (value_pickaxe p1) 0.22741078510961177)
		(= (value_pickaxe p2) 0.3150017685660872)
		(= (value_pickaxe p3) 0.4283904352992389)

        (= (value_shovel s0) 6.159014096606195)
		(= (value_shovel s1) 6.843828409941864)
		(= (value_shovel s2) 1.7025683393973257)

        (= (value_hoe h0) 16.885730700268617)
		(= (value_hoe h1) 29.941468134392558)
		(= (value_hoe h2) 13.398926919500841)

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

