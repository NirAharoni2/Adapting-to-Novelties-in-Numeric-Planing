;; Automatically generated sailing problem
(define (problem instance_84)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -4.0)
		(= (y b0) -7.0)

		(= (d p0) 60.0)

		(= (drift_factor) 2.97404)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)