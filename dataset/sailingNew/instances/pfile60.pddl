;; Automatically generated sailing problem
;;Setting seed to 60
(define (problem instance_60)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 2.82241)
		(= (x b0) 9.0)
		(= (y b0) -1.0)
		(= (x b1) 6.0)
		(= (y b1) -10.0)

		(= (d p0) 144.0)
		(= (d p1) 71.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)