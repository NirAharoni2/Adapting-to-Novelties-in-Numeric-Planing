;; Automatically generated sailing problem
;;Setting seed to 73
(define (problem instance_73)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 3.64586)
		(= (x b0) -5.0)
		(= (y b0) -2.0)
		(= (x b1) -5.0)
		(= (y b1) -9.0)

		(= (d p0) -125.0)
		(= (d p1) 127.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)