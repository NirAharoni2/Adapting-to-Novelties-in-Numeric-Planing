;; Automatically generated sailing problem
;;Setting seed to 94
(define (problem instance_94)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 3.17741)
		(= (x b0) 4.0)
		(= (y b0) -1.0)
		(= (x b1) 4.0)
		(= (y b1) 7.0)

		(= (d p0) -94.0)
		(= (d p1) 124.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)