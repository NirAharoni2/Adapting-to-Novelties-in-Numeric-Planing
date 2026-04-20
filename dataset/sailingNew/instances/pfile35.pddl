;; Automatically generated sailing problem
;;Setting seed to 35
(define (problem instance_35)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 2.02246)
		(= (x b0) -9.0)
		(= (y b0) 5.0)
		(= (x b1) 3.0)
		(= (y b1) -9.0)

		(= (d p0) -136.0)
		(= (d p1) -131.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)