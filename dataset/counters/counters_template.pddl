;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem ${instance_name})
	(:domain ${domain_name})
	(:objects
		${counters_list} - counter
		${rate_decrease_list} - rate_decrease
	)
  (:init
		${counters_initial_values}

        ${rate_decrease_initial_value}

        ${factor}

		(= (max_int) ${max_int_value})
	)
	(:goal
		(and
			${counters_final_values}
		)
	)
)

