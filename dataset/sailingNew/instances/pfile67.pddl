;; Automatically generated sailing problem
;;Setting seed to 67
(define (problem instance_67)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 2.87335)
		(= (x b0) 4.0)
		(= (y b0) -4.0)
		(= (x b1) -9.0)
		(= (y b1) -5.0)

		(= (d p0) -64.0)
		(= (d p1) -37.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)