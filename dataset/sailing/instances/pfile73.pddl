;; Automatically generated sailing problem
;;Setting seed to 73
(define (problem instance_73)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 4.90967)
		(= (x b0) 10.0)
		(= (y b0) 5.0)

		(= (d p0) 80.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)