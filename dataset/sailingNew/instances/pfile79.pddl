;; Automatically generated sailing problem
;;Setting seed to 79
(define (problem instance_79)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 2.29811)
		(= (x b0) -6.0)
		(= (y b0) -5.0)
		(= (x b1) -2.0)
		(= (y b1) -2.0)

		(= (d p0) -32.0)
		(= (d p1) -26.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)