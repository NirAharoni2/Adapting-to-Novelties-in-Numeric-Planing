;; Automatically generated sailing problem
;;Setting seed to 85
(define (problem instance_85)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 3.29242)
		(= (x b0) -1.0)
		(= (y b0) -9.0)
		(= (x b1) -5.0)
		(= (y b1) 6.0)

		(= (d p0) 116.0)
		(= (d p1) 112.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)