;; Automatically generated sailing problem
;;Setting seed to 53
(define (problem instance_53)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 4.9327)
		(= (x b0) 4.0)
		(= (y b0) -3.0)
		(= (x b1) -2.0)
		(= (y b1) -2.0)

		(= (d p0) -141.0)
		(= (d p1) -40.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)