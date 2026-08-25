; PolyCraft basic problem
(define (problem ${instance_name})

	(:domain ${domain_name})

	(:init
		${trees_in_map}

		${mine_factor}

		${count_log_in_inventory}
		${count_planks_in_inventory}
		${count_stick_in_inventory}
		${count_sack_polyisoprene_pellets_in_inventory}
		${count_tree_tap_in_inventory}
		${count_pogo_stick}
	)

	(:goal
		(and
			${count_pogo_stick_goal}
		)
	)
)