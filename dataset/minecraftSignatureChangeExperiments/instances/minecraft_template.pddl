;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem ${instance_name})
	(:domain ${domain_name})
	(:objects
		${axe_list} - axe
		${pickaxe_list} - pickaxe
		${shovel_list} - shovel
		${hoe_list} - hoe
	)
  (:init

        ${axe_value}

        ${pickaxe_value}

        ${shovel_value}

        ${hoe_value}

        ${trees_in_map}

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

