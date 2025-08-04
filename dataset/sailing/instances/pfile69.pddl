;; Automatically generated sailing problem
;;Setting seed to 69
(define (problem instance_69)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 3.89561)
		(= (x b0) -3.0)
		(= (y b0) 1.0)

		(= (d p0) -60.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)