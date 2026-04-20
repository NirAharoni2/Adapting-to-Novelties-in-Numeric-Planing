;; Automatically generated sailing problem
;;Setting seed to 57
(define (problem instance_57)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 4.97099)
		(= (x b0) 9.0)
		(= (y b0) -2.0)
		(= (x b1) 8.0)
		(= (y b1) 10.0)

		(= (d p0) 88.0)
		(= (d p1) 42.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)