;; Automatically generated sailing problem
;;Setting seed to 75
(define (problem instance_75)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 2.82168)
		(= (x b0) 1.0)
		(= (y b0) -6.0)
		(= (x b1) -9.0)
		(= (y b1) 2.0)

		(= (d p0) -97.0)
		(= (d p1) 38.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)