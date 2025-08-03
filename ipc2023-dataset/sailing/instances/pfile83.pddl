;; Automatically generated sailing problem
;;Setting seed to 83
(define (problem instance_83)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 2.16407)
		(= (x b0) -6.0)
		(= (y b0) -8.0)

		(= (d p0) 143.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)