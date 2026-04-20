;; Automatically generated sailing problem
;;Setting seed to 47
(define (problem instance_47)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 2.32484)
		(= (x b0) 1.0)
		(= (y b0) -0.0)
		(= (x b1) -6.0)
		(= (y b1) 2.0)

		(= (d p0) -130.0)
		(= (d p1) -65.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)