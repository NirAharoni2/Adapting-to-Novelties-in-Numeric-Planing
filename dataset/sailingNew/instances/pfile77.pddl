;; Automatically generated sailing problem
;;Setting seed to 77
(define (problem instance_77)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 4.42416)
		(= (x b0) -1.0)
		(= (y b0) 2.0)
		(= (x b1) -1.0)
		(= (y b1) -8.0)

		(= (d p0) -16.0)
		(= (d p1) 131.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)