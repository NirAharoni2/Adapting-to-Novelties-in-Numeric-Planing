;; Automatically generated sailing problem
;;Setting seed to 2
(define (problem instance_2)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 2.04635)
		(= (x b0) 4.0)
		(= (y b0) -2.0)
		(= (x b1) 10.0)
		(= (y b1) 4.0)

		(= (d p0) -10.0)
		(= (d p1) -99.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)