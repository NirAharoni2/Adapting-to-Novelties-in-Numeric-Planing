;; Automatically generated sailing problem
;;Setting seed to 72
(define (problem instance_72)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 3.06137)
		(= (x b0) -1.0)
		(= (y b0) -8.0)
		(= (x b1) -3.0)
		(= (y b1) 6.0)

		(= (d p0) 49.0)
		(= (d p1) 149.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)