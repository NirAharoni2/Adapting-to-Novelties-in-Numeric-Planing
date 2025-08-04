;; Automatically generated sailing problem
;;Setting seed to 65
(define (problem instance_65)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 4.85356)
		(= (x b0) -6.0)
		(= (y b0) -8.0)

		(= (d p0) 144.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)