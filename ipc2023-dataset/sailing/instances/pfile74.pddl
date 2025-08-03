;; Automatically generated sailing problem
;;Setting seed to 74
(define (problem instance_74)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 2.55788)
		(= (x b0) 4.0)
		(= (y b0) -2.0)

		(= (d p0) -10.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)