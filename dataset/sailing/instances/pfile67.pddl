;; Automatically generated sailing problem
;;Setting seed to 67
(define (problem instance_67)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 4.10159)
		(= (x b0) 1.0)
		(= (y b0) 6.0)

		(= (d p0) 147.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)