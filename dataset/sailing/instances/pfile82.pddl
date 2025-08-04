;; Automatically generated sailing problem
;;Setting seed to 82
(define (problem instance_82)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 4.64104)
		(= (x b0) 6.0)
		(= (y b0) -2.0)

		(= (d p0) -114.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)