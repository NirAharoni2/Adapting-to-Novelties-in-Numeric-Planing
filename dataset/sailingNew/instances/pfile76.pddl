;; Automatically generated sailing problem
;;Setting seed to 76
(define (problem instance_76)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 3.48502)
		(= (x b0) 2.0)
		(= (y b0) -1.0)
		(= (x b1) -3.0)
		(= (y b1) -6.0)

		(= (d p0) -57.0)
		(= (d p1) 12.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)