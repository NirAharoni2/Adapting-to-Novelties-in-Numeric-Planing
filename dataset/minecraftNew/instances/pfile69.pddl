;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_69)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.39443606723965097)
		(= (value_axe a1) 0.17303368767829774)
		(= (value_axe a2) 0.35781800341629455)

        (= (value_pickaxe p0) 0.8532734507083607)
		(= (value_pickaxe p1) 0.42776380155547)
		(= (value_pickaxe p2) 0.19945305736810792)
		(= (value_pickaxe p3) 0.07576662924640976)

        (= (trees_in_map) 28)

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

