;; Automatically generated sailing problem
;;Setting seed to 26
(define (problem instance_26)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 4.23834)
		(= (x b0) -3.0)
		(= (y b0) -2.0)
		(= (x b1) -4.0)
		(= (y b1) 10.0)

		(= (d p0) -97.0)
		(= (d p1) 95.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)