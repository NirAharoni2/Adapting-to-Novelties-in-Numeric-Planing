;; Automatically generated sailing problem
;;Setting seed to 22
(define (problem instance_22)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 2.69122)
		(= (x b0) 6.0)
		(= (y b0) 2.0)
		(= (x b1) -10.0)
		(= (y b1) 4.0)

		(= (d p0) -70.0)
		(= (d p1) 95.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)