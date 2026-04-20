;; Automatically generated sailing problem
;;Setting seed to 100
(define (problem instance_100)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 2.74115)
		(= (x b0) -2.0)
		(= (y b0) -4.0)
		(= (x b1) 4.0)
		(= (y b1) -5.0)

		(= (d p0) -118.0)
		(= (d p1) 39.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)