;; Automatically generated sailing problem
;;Setting seed to 13
(define (problem instance_13)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 4.38229)
		(= (x b0) 5.0)
		(= (y b0) -2.0)
		(= (x b1) -5.0)
		(= (y b1) 3.0)

		(= (d p0) 127.0)
		(= (d p1) 100.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)