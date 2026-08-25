;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem ${instance_name})

	(:domain ${domain_name})

	(:objects
		${boat_name_list} - boat
		${people_name_list} - person
		${engine_list} - engine
		${dummy_1_list} - dummy_1
		${dummy_2_list} - dummy_2
		${dummy_3_list} - dummy_3
	)

  (:init
		${boat_positions}

		${people_d_position}

        ${engine_value}

        ${dummy_1_value}

        ${dummy_2_value}

        ${dummy_3_value}
	)

	(:goal
		(and
			${people_to_save}
		)
	)
)

