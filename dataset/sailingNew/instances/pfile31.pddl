;; Automatically generated sailing problem
;;Setting seed to 31
(define (problem instance_31)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 4.18205)
		(= (x b0) -5.0)
		(= (y b0) -7.0)
		(= (x b1) -1.0)
		(= (y b1) 7.0)

		(= (d p0) -85.0)
		(= (d p1) 69.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)