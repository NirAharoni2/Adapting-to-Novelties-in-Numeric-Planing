;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_99)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.9590203454963837)
		(= (value_axe a1) 0.4565540011803483)
		(= (value_axe a2) 0.2661990649788587)
		(= (value_axe a3) 0.09111701523263338)

        (= (value_pickaxe p0) 0.7343082910318623)
		(= (value_pickaxe p1) 0.7933141262936295)
		(= (value_pickaxe p2) 0.30922038119681294)

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

