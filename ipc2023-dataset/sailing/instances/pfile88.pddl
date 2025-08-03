;; Automatically generated sailing problem
;;Setting seed to 88
(define (problem instance_88)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 3.56575)
		(= (x b0) -7.0)
		(= (y b0) 5.0)

		(= (d p0) 147.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)