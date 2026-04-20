;; Automatically generated sailing problem
;;Setting seed to 16
(define (problem instance_16)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 3.47959)
		(= (x b0) -3.0)
		(= (y b0) 6.0)
		(= (x b1) 8.0)
		(= (y b1) -9.0)

		(= (d p0) -118.0)
		(= (d p1) 104.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)