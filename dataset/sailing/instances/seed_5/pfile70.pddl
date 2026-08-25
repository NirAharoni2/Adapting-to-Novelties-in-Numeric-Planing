;; Automatically generated sailing problem
(define (problem instance_70)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 6.0)
		(= (y b0) -10.0)

		(= (d p0) -146.0)

		(= (drift_factor) 2.85989)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)