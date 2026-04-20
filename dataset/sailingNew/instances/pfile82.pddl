;; Automatically generated sailing problem
;;Setting seed to 82
(define (problem instance_82)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 3.67059)
		(= (x b0) 1.0)
		(= (y b0) -9.0)
		(= (x b1) -4.0)
		(= (y b1) -9.0)

		(= (d p0) 29.0)
		(= (d p1) -98.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)