;; Automatically generated sailing problem
;;Setting seed to 7
(define (problem instance_7)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 2.37026)
		(= (x b0) 1.0)
		(= (y b0) -9.0)
		(= (x b1) -2.0)
		(= (y b1) 5.0)

		(= (d p0) -113.0)
		(= (d p1) -131.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)