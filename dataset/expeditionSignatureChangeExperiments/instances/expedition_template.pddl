;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem ${instance_name})
	(:domain ${domain_name})
	(:objects
		${sled_list} - sled
		${waypoint_list} - waypoint
		${factor_list} - factor
		${dummy_1_list} - dummy_1
		${dummy_2_list} - dummy_2
		${dummy_3_list} - dummy_3
	)
  (:init
        ${at_start}

        ${sled_capacity}

        ${sled_supplies}

        ${factor_value}

        ${dummy_1_value}

        ${dummy_2_value}

        ${dummy_3_value}

        ${waypoint_supplies}

		${is_next}
	)
	(:goal
		(and
			${at_end}
		)
	)
)

