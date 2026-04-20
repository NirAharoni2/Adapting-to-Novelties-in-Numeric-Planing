;; Automatically generated sailing problem
;;Setting seed to 24
(define (problem instance_24)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 2.87797)
		(= (x b0) -2.0)
		(= (y b0) 6.0)
		(= (x b1) -2.0)
		(= (y b1) -9.0)

		(= (d p0) -134.0)
		(= (d p1) -148.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)