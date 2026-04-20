;; Automatically generated sailing problem
;;Setting seed to 15
(define (problem instance_15)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 3.65265)
		(= (x b0) -9.0)
		(= (y b0) -7.0)
		(= (x b1) 4.0)
		(= (y b1) -5.0)

		(= (d p0) -130.0)
		(= (d p1) -54.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)