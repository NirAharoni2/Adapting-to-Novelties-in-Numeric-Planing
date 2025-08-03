;; Automatically generated sailing problem
;;Setting seed to 76
(define (problem instance_76)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 2.272)
		(= (x b0) 9.0)
		(= (y b0) -6.0)

		(= (d p0) -89.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)