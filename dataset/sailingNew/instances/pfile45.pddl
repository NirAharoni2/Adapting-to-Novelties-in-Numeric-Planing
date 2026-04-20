;; Automatically generated sailing problem
;;Setting seed to 45
(define (problem instance_45)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 2.83612)
		(= (x b0) 2.0)
		(= (y b0) 0.0)
		(= (x b1) 7.0)
		(= (y b1) -10.0)

		(= (d p0) 96.0)
		(= (d p1) -50.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)