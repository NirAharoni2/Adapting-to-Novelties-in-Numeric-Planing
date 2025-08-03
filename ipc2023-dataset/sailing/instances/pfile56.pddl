;; Automatically generated sailing problem
;;Setting seed to 56
(define (problem instance_56)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 2.42593)
		(= (x b0) 4.0)
		(= (y b0) 1.0)

		(= (d p0) -55.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)