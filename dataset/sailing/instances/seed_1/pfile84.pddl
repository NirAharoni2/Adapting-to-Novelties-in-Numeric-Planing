;; Automatically generated sailing problem
(define (problem instance_84)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -7.0)
		(= (y b0) -4.0)

		(= (d p0) 122.0)

		(= (drift_factor) 2.00528)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)