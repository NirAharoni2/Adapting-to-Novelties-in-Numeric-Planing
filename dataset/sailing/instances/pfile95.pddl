;; Automatically generated sailing problem
;;Setting seed to 95
(define (problem instance_95)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 2.32636)
		(= (x b0) -1.0)
		(= (y b0) 6.0)

		(= (d p0) -20.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)