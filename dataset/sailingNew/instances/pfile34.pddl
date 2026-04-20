;; Automatically generated sailing problem
;;Setting seed to 34
(define (problem instance_34)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 3.3634)
		(= (x b0) 6.0)
		(= (y b0) -4.0)
		(= (x b1) 9.0)
		(= (y b1) -9.0)

		(= (d p0) -46.0)
		(= (d p1) 98.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)