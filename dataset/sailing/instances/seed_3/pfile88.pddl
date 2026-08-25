;; Automatically generated sailing problem
(define (problem instance_88)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 8.0)
		(= (y b0) 5.0)

		(= (d p0) 143.0)

		(= (drift_factor) 2.90169)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)