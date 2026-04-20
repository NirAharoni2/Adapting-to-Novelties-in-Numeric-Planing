;; Automatically generated sailing problem
;;Setting seed to 36
(define (problem instance_36)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 3.93373)
		(= (x b0) -6.0)
		(= (y b0) 6.0)
		(= (x b1) 1.0)
		(= (y b1) -10.0)

		(= (d p0) 4.0)
		(= (d p1) 40.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)