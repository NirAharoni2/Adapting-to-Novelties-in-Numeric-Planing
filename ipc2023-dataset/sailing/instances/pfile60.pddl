;; Automatically generated sailing problem
;;Setting seed to 60
(define (problem instance_60)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 2.03654)
		(= (x b0) -4.0)
		(= (y b0) 9.0)

		(= (d p0) -31.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)