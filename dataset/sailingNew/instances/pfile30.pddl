;; Automatically generated sailing problem
;;Setting seed to 30
(define (problem instance_30)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 2.05687)
		(= (x b0) 8.0)
		(= (y b0) 5.0)
		(= (x b1) -2.0)
		(= (y b1) -9.0)

		(= (d p0) 99.0)
		(= (d p1) -37.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)