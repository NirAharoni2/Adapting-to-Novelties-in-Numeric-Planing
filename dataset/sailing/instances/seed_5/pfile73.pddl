;; Automatically generated sailing problem
(define (problem instance_73)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -8.0)
		(= (y b0) -9.0)

		(= (d p0) -125.0)

		(= (drift_factor) 3.32051)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)