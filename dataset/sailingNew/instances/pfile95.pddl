;; Automatically generated sailing problem
;;Setting seed to 95
(define (problem instance_95)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 4.65174)
		(= (x b0) 9.0)
		(= (y b0) 3.0)
		(= (x b1) 4.0)
		(= (y b1) -3.0)

		(= (d p0) -12.0)
		(= (d p1) 49.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)