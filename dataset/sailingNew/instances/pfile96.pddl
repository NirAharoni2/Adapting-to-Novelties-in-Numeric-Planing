;; Automatically generated sailing problem
;;Setting seed to 96
(define (problem instance_96)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 4.60411)
		(= (x b0) 8.0)
		(= (y b0) 9.0)
		(= (x b1) -4.0)
		(= (y b1) -5.0)

		(= (d p0) 50.0)
		(= (d p1) 143.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)