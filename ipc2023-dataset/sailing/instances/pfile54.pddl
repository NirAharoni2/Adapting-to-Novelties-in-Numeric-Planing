;; Automatically generated sailing problem
;;Setting seed to 54
(define (problem instance_54)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 2.02672)
		(= (x b0) 2.0)
		(= (y b0) 1.0)

		(= (d p0) 52.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)