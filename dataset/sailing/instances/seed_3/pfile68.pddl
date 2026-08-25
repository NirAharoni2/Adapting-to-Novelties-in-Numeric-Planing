;; Automatically generated sailing problem
(define (problem instance_68)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 8.0)
		(= (y b0) -8.0)

		(= (d p0) -99.0)

		(= (drift_factor) 2.53499)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)