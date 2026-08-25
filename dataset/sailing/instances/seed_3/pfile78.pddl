;; Automatically generated sailing problem
(define (problem instance_78)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 8.0)
		(= (y b0) -4.0)

		(= (d p0) -122.0)

		(= (drift_factor) 2.60501)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)