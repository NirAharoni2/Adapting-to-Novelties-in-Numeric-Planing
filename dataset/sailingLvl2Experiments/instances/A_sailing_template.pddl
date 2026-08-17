;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem ${instance_name})

	(:domain ${domain_name})

	(:objects
		${boat_name_list} - boat
		${people_name_list} - person
		${dummy_1_list} - dummy_1
		${dummy_2_list} - dummy_2
		${dummy_3_list} - dummy_3
	)

  (:init
		${boat_positions}

		${people_d_position}

        ${dummy_1_d_position}

        ${dummy_2_d_position}

        ${dummy_3_d_position}
	)

	(:goal
		(and
			${people_to_save}
		)
	)
)

