;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_22)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.15936268544400245)
		(= (value_axe a1) 0.6800887213230354)
		(= (value_axe a2) 0.4084474363489866)
		(= (value_axe a3) 0.10385030982806753)
		(= (value_axe a4) 0.047233208433375196)

        (= (value_pickaxe p0) 0.03972295381278845)
		(= (value_pickaxe p1) 0.261316012931347)
		(= (value_pickaxe p2) 0.45223915525142033)
		(= (value_pickaxe p3) 0.33337380810934203)
		(= (value_pickaxe p4) 0.2562529030143358)

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

