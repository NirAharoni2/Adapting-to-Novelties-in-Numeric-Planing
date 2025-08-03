;; Automatically generated sailing problem
;;Setting seed to 72
(define (problem instance_72)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 4.22583)
		(= (x b0) 3.0)
		(= (y b0) -1.0)

		(= (d p0) -85.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)