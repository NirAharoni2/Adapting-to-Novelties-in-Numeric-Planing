;; Automatically generated sailing problem
;;Setting seed to 18
(define (problem instance_18)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 4.81051)
		(= (x b0) 7.0)
		(= (y b0) -5.0)
		(= (x b1) 9.0)
		(= (y b1) -0.0)

		(= (d p0) 95.0)
		(= (d p1) 116.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)