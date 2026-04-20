;; Automatically generated sailing problem
;;Setting seed to 11
(define (problem instance_11)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 2.15678)
		(= (x b0) -7.0)
		(= (y b0) -5.0)
		(= (x b1) 10.0)
		(= (y b1) -9.0)

		(= (d p0) 18.0)
		(= (d p1) 78.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)