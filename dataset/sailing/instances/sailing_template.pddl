;; Automatically generated sailing problem
(define (problem ${instance_name})

	(:domain ${domain_name})

	(:objects
		${boat_name_list} - boat
		${people_name_list} - person
	)

  (:init
		${boat_positions}

		${people_d_position}

		${drift_factor}
	)

	(:goal
		(and
			${people_to_save}
		)
	)
)