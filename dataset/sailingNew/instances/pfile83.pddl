;; Automatically generated sailing problem
;;Setting seed to 83
(define (problem instance_83)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 3.88003)
		(= (x b0) -2.0)
		(= (y b0) 3.0)
		(= (x b1) 8.0)
		(= (y b1) 4.0)

		(= (d p0) -2.0)
		(= (d p1) -10.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)