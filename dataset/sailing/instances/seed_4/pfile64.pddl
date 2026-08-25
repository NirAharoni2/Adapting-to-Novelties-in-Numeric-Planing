;; Automatically generated sailing problem
(define (problem instance_64)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 9.0)
		(= (y b0) -6.0)

		(= (d p0) -75.0)

		(= (drift_factor) 2.23501)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)