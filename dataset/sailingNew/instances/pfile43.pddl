;; Automatically generated sailing problem
;;Setting seed to 43
(define (problem instance_43)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 4.85925)
		(= (x b0) -1.0)
		(= (y b0) -2.0)
		(= (x b1) -3.0)
		(= (y b1) 9.0)

		(= (d p0) 5.0)
		(= (d p1) -33.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)