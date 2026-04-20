;; Automatically generated sailing problem
;;Setting seed to 56
(define (problem instance_56)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 4.51575)
		(= (x b0) -5.0)
		(= (y b0) -9.0)
		(= (x b1) 8.0)
		(= (y b1) -8.0)

		(= (d p0) 58.0)
		(= (d p1) 30.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)