;; Automatically generated sailing problem
;;Setting seed to 8
(define (problem instance_8)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 2.52328)
		(= (x b0) -5.0)
		(= (y b0) -8.0)
		(= (x b1) 9.0)
		(= (y b1) 8.0)

		(= (d p0) 53.0)
		(= (d p1) -139.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)