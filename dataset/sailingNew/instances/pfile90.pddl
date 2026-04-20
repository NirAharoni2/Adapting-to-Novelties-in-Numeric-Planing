;; Automatically generated sailing problem
;;Setting seed to 90
(define (problem instance_90)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 4.43377)
		(= (x b0) -8.0)
		(= (y b0) 3.0)
		(= (x b1) -3.0)
		(= (y b1) 7.0)

		(= (d p0) -42.0)
		(= (d p1) 49.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)