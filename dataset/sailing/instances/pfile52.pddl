;; Automatically generated sailing problem
;;Setting seed to 52
(define (problem instance_52)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 3.16631)
		(= (x b0) -7.0)
		(= (y b0) -2.0)

		(= (d p0) -66.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)