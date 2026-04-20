;; Automatically generated sailing problem
;;Setting seed to 69
(define (problem instance_69)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 2.48231)
		(= (x b0) 10.0)
		(= (y b0) -8.0)
		(= (x b1) 2.0)
		(= (y b1) 9.0)

		(= (d p0) 128.0)
		(= (d p1) 41.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)