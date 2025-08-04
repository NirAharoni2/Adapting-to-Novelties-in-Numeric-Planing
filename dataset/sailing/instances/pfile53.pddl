;; Automatically generated sailing problem
;;Setting seed to 53
(define (problem instance_53)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 2.62676)
		(= (x b0) 8.0)
		(= (y b0) 4.0)

		(= (d p0) 51.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)