;; Automatically generated sailing problem
;;Setting seed to 48
(define (problem instance_48)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 3.85941)
		(= (x b0) 2.0)
		(= (y b0) -6.0)
		(= (x b1) -7.0)
		(= (y b1) -10.0)

		(= (d p0) 40.0)
		(= (d p1) 95.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)