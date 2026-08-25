; PolyCraft basic problem
(define (problem instance_54)

	(:domain PolyCraft)

	(:init
		(= (trees_in_map) 76)

		(= (mine_factor) 4.27)

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