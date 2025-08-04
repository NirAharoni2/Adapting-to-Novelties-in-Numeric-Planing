;; Automatically generated sailing problem
;;Setting seed to 96
(define (problem instance_96)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 3.33699)
		(= (x b0) -3.0)
		(= (y b0) 2.0)

		(= (d p0) 111.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)