;; Automatically generated sailing problem
;;Setting seed to 50
(define (problem instance_50)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 3.18068)
		(= (x b0) 10.0)
		(= (y b0) -1.0)
		(= (x b1) -2.0)
		(= (y b1) -8.0)

		(= (d p0) 94.0)
		(= (d p1) 58.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)