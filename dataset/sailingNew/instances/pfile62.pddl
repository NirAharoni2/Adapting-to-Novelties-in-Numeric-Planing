;; Automatically generated sailing problem
;;Setting seed to 62
(define (problem instance_62)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 3.20854)
		(= (x b0) 6.0)
		(= (y b0) 8.0)
		(= (x b1) -10.0)
		(= (y b1) 3.0)

		(= (d p0) 54.0)
		(= (d p1) 71.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)