;; Automatically generated sailing problem
;;Setting seed to 78
(define (problem instance_78)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 2.02316)
		(= (x b0) -3.0)
		(= (y b0) -6.0)
		(= (x b1) 8.0)
		(= (y b1) 5.0)

		(= (d p0) -131.0)
		(= (d p1) -62.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)