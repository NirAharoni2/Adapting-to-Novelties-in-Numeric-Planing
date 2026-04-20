;; Automatically generated sailing problem
;;Setting seed to 99
(define (problem instance_99)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 3.01391)
		(= (x b0) -7.0)
		(= (y b0) -5.0)
		(= (x b1) -4.0)
		(= (y b1) 9.0)

		(= (d p0) -128.0)
		(= (d p1) -21.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)