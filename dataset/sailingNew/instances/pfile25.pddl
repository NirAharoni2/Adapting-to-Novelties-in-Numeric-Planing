;; Automatically generated sailing problem
;;Setting seed to 25
(define (problem instance_25)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 2.91881)
		(= (x b0) -6.0)
		(= (y b0) 2.0)
		(= (x b1) -3.0)
		(= (y b1) -1.0)

		(= (d p0) 26.0)
		(= (d p1) -109.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)