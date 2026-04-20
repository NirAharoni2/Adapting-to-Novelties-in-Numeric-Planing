;; Automatically generated sailing problem
;;Setting seed to 88
(define (problem instance_88)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 3.31134)
		(= (x b0) -2.0)
		(= (y b0) -1.0)
		(= (x b1) -2.0)
		(= (y b1) -2.0)

		(= (d p0) -130.0)
		(= (d p1) -45.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)