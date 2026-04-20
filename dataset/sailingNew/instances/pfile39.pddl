;; Automatically generated sailing problem
;;Setting seed to 39
(define (problem instance_39)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 3.78663)
		(= (x b0) -4.0)
		(= (y b0) -4.0)
		(= (x b1) 4.0)
		(= (y b1) -8.0)

		(= (d p0) 19.0)
		(= (d p1) -107.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)