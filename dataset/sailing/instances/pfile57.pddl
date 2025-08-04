;; Automatically generated sailing problem
;;Setting seed to 57
(define (problem instance_57)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 4.72576)
		(= (x b0) -8.0)
		(= (y b0) -2.0)

		(= (d p0) -74.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)