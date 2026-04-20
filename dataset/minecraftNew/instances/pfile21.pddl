;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_21)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.562343875326789)
		(= (value_axe a1) 0.11777873851783116)
		(= (value_axe a2) 0.740018842395845)
		(= (value_axe a3) 0.1567949971240823)

        (= (value_pickaxe p0) 0.6344700603799082)
		(= (value_pickaxe p1) 0.3722066268604466)
		(= (value_pickaxe p2) 0.614190521002306)

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

