;; Automatically generated sailing problem
;;Setting seed to 64
(define (problem instance_64)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 4.52333)
		(= (x b0) 0.0)
		(= (y b0) 4.0)

		(= (d p0) 22.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)