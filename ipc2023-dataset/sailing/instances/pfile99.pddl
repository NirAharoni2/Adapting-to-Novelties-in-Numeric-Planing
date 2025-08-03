;; Automatically generated sailing problem
;;Setting seed to 99
(define (problem instance_99)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 2.91368)
		(= (x b0) 1.0)
		(= (y b0) 8.0)

		(= (d p0) -36.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)