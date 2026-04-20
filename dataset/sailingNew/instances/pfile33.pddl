;; Automatically generated sailing problem
;;Setting seed to 33
(define (problem instance_33)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 2.89324)
		(= (x b0) 2.0)
		(= (y b0) 5.0)
		(= (x b1) 10.0)
		(= (y b1) 1.0)

		(= (d p0) 14.0)
		(= (d p1) 65.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)