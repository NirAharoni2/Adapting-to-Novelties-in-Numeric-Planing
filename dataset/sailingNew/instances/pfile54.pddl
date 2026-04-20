;; Automatically generated sailing problem
;;Setting seed to 54
(define (problem instance_54)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 3.0932)
		(= (x b0) 6.0)
		(= (y b0) -5.0)
		(= (x b1) -5.0)
		(= (y b1) 3.0)

		(= (d p0) 99.0)
		(= (d p1) -48.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)