;; Automatically generated sailing problem
;;Setting seed to 29
(define (problem instance_29)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 2.83845)
		(= (x b0) -2.0)
		(= (y b0) -10.0)
		(= (x b1) 9.0)
		(= (y b1) -9.0)

		(= (d p0) -90.0)
		(= (d p1) -74.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)