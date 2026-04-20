;; Automatically generated sailing problem
;;Setting seed to 14
(define (problem instance_14)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 2.38897)
		(= (x b0) 3.0)
		(= (y b0) 5.0)
		(= (x b1) 8.0)
		(= (y b1) -7.0)

		(= (d p0) -81.0)
		(= (d p1) 79.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)