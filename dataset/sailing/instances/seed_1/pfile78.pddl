;; Automatically generated sailing problem
(define (problem instance_78)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -5.0)
		(= (y b0) 10.0)

		(= (d p0) 147.0)

		(= (drift_factor) 3.21132)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)