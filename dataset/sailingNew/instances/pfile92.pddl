;; Automatically generated sailing problem
;;Setting seed to 92
(define (problem instance_92)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 2.26658)
		(= (x b0) 8.0)
		(= (y b0) 2.0)
		(= (x b1) -0.0)
		(= (y b1) 1.0)

		(= (d p0) 65.0)
		(= (d p1) -8.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)