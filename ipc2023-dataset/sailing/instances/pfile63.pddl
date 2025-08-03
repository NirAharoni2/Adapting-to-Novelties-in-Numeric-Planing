;; Automatically generated sailing problem
;;Setting seed to 63
(define (problem instance_63)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 4.021)
		(= (x b0) -8.0)
		(= (y b0) 5.0)

		(= (d p0) -101.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)