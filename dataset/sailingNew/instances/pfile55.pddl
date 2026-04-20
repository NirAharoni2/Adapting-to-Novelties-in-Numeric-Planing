;; Automatically generated sailing problem
;;Setting seed to 55
(define (problem instance_55)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 3.36774)
		(= (x b0) 4.0)
		(= (y b0) 3.0)
		(= (x b1) -1.0)
		(= (y b1) 1.0)

		(= (d p0) 138.0)
		(= (d p1) 23.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)