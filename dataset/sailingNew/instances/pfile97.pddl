;; Automatically generated sailing problem
;;Setting seed to 97
(define (problem instance_97)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 3.99979)
		(= (x b0) -2.0)
		(= (y b0) 2.0)
		(= (x b1) 2.0)
		(= (y b1) -8.0)

		(= (d p0) 40.0)
		(= (d p1) 119.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)