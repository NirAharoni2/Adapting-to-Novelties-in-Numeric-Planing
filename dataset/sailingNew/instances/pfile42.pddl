;; Automatically generated sailing problem
;;Setting seed to 42
(define (problem instance_42)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 3.62632)
		(= (x b0) 4.0)
		(= (y b0) 3.0)
		(= (x b1) 2.0)
		(= (y b1) 7.0)

		(= (d p0) -91.0)
		(= (d p1) -30.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)