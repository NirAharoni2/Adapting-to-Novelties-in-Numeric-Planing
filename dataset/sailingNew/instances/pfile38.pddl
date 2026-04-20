;; Automatically generated sailing problem
;;Setting seed to 38
(define (problem instance_38)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 4.1013)
		(= (x b0) 7.0)
		(= (y b0) -6.0)
		(= (x b1) 7.0)
		(= (y b1) -7.0)

		(= (d p0) 22.0)
		(= (d p1) 6.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)