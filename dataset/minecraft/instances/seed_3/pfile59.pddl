; PolyCraft basic problem
(define (problem instance_59)

	(:domain PolyCraft)

	(:init
		(= (trees_in_map) 74)

		(= (mine_factor) 3.08)

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