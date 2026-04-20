;; Automatically generated sailing problem
;;Setting seed to 32
(define (problem instance_32)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 3.40146)
		(= (x b0) 9.0)
		(= (y b0) -5.0)
		(= (x b1) 1.0)
		(= (y b1) 0.0)

		(= (d p0) 148.0)
		(= (d p1) 42.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)