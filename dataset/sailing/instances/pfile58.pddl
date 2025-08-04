;; Automatically generated sailing problem
;;Setting seed to 58
(define (problem instance_58)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 2.04804)
		(= (x b0) 9.0)
		(= (y b0) -7.0)

		(= (d p0) -90.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)