;; Automatically generated sailing problem
;;Setting seed to 63
(define (problem instance_63)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 3.26477)
		(= (x b0) 7.0)
		(= (y b0) 10.0)
		(= (x b1) 9.0)
		(= (y b1) 0.0)

		(= (d p0) -30.0)
		(= (d p1) 26.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)