;; Joan Espasa Arxer (jea20@st-andrews.ac.uk), based on the expedition domain by Ben Pathak (pathak.ban@gmail.com)
(define (problem ${instance_name})
	(:domain ${domain_name})
	(:objects
		${sled_list} - sled
		${waypoint_list} - waypoint
	)
  (:init

        ${at_start}

        ${sled_capacity}

        ${sled_supplies}

        ${factor}

        ${waypoint_supplies}

        ${is_next}
	)
	(:goal
		(and
			${at_end}
		)
	)
)