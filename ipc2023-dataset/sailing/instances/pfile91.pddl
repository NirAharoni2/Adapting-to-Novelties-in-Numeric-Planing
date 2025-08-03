;; Automatically generated sailing problem
;;Setting seed to 91
(define (problem instance_91)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 2.44809)
		(= (x b0) -2.0)
		(= (y b0) -1.0)

		(= (d p0) 3.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)