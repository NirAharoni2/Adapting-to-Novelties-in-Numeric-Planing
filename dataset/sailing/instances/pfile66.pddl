;; Automatically generated sailing problem
;;Setting seed to 66
(define (problem instance_66)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 4.16451)
		(= (x b0) -3.0)
		(= (y b0) 7.0)

		(= (d p0) 135.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)