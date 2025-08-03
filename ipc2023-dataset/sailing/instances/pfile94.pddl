;; Automatically generated sailing problem
;;Setting seed to 94
(define (problem instance_94)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 3.6295)
		(= (x b0) -8.0)
		(= (y b0) 7.0)

		(= (d p0) -61.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)