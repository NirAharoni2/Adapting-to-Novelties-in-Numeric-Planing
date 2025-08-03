;; Automatically generated sailing problem
;;Setting seed to 79
(define (problem instance_79)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 3.32281)
		(= (x b0) 8.0)
		(= (y b0) 10.0)

		(= (d p0) 51.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)