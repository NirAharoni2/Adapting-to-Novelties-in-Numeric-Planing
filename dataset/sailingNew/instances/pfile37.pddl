;; Automatically generated sailing problem
;;Setting seed to 37
(define (problem instance_37)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 4.30113)
		(= (x b0) 8.0)
		(= (y b0) 4.0)
		(= (x b1) 10.0)
		(= (y b1) 9.0)

		(= (d p0) -19.0)
		(= (d p1) 107.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)