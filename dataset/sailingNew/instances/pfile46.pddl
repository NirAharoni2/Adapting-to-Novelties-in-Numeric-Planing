;; Automatically generated sailing problem
;;Setting seed to 46
(define (problem instance_46)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 2.35935)
		(= (x b0) -8.0)
		(= (y b0) -8.0)
		(= (x b1) 7.0)
		(= (y b1) 3.0)

		(= (d p0) -89.0)
		(= (d p1) -115.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)