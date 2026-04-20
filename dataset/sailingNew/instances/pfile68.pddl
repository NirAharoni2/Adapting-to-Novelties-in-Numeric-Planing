;; Automatically generated sailing problem
;;Setting seed to 68
(define (problem instance_68)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 2.49843)
		(= (x b0) -8.0)
		(= (y b0) -4.0)
		(= (x b1) -6.0)
		(= (y b1) 1.0)

		(= (d p0) -125.0)
		(= (d p1) -78.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)