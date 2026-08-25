;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_97)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.9059415291288663)
		(= (value_axe a1) 0.21271787313381008)
		(= (value_axe a2) 0.21098729300524954)
		(= (value_axe a3) 0.04558786041101848)
		(= (value_axe a4) 0.4194148858956305)

        (= (value_pickaxe p0) 0.40107116509287444)
		(= (value_pickaxe p1) 0.8183127750551726)
		(= (value_pickaxe p2) 0.1720890947688467)

        (= (value_shovel s0) 3.6407805748671755)
		(= (value_shovel s1) 6.387806214613288)
		(= (value_shovel s2) 1.1664789231714765)

        (= (value_hoe h0) 18.258718639866522)
		(= (value_hoe h1) 12.97265517509291)
		(= (value_hoe h2) 25.409205788517642)

        (= (trees_in_map) 29)

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

