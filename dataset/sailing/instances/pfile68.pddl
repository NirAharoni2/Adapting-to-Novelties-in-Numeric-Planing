;; Automatically generated sailing problem
;;Setting seed to 68
(define (problem instance_68)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 2.79277)
		(= (x b0) 8.0)
		(= (y b0) -8.0)

		(= (d p0) 85.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)