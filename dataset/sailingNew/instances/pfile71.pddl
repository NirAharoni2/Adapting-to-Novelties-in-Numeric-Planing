;; Automatically generated sailing problem
;;Setting seed to 71
(define (problem instance_71)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 3.24843)
		(= (x b0) -4.0)
		(= (y b0) -5.0)
		(= (x b1) -4.0)
		(= (y b1) -3.0)

		(= (d p0) 127.0)
		(= (d p1) -12.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)