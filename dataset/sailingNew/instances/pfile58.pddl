;; Automatically generated sailing problem
;;Setting seed to 58
(define (problem instance_58)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 3.59492)
		(= (x b0) 6.0)
		(= (y b0) -10.0)
		(= (x b1) 3.0)
		(= (y b1) -9.0)

		(= (d p0) -116.0)
		(= (d p1) -41.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)