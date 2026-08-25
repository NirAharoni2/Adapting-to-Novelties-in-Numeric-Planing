;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_41)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.8353788699587615)
		(= (value_axe a1) 0.5943961772598659)
		(= (value_axe a2) 0.8148015989318974)
		(= (value_axe a3) 0.20598751393644021)
		(= (value_axe a4) 0.539182052072547)

        (= (value_pickaxe p0) 0.4641741163975044)
		(= (value_pickaxe p1) 0.7280087146361)
		(= (value_pickaxe p2) 0.07723850266312171)
		(= (value_pickaxe p3) 0.3461492746469014)
		(= (value_pickaxe p4) 0.4845412876725472)

        (= (value_shovel s0) 1.5006894429588415)
		(= (value_shovel s1) 4.868917232784816)

        (= (value_hoe h0) 24.70635702679275)
		(= (value_hoe h1) 18.45703285695741)
		(= (value_hoe h2) 22.968202839345377)
		(= (value_hoe h3) 22.117386090560707)

        (= (trees_in_map) 26)

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

