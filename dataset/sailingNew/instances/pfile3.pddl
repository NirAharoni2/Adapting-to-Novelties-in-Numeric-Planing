;; Automatically generated sailing problem
;;Setting seed to 3
(define (problem instance_3)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 3.95702)
		(= (x b0) -9.0)
		(= (y b0) 4.0)
		(= (x b1) -0.0)
		(= (y b1) -9.0)

		(= (d p0) -73.0)
		(= (d p1) 27.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)