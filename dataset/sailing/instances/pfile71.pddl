;; Automatically generated sailing problem
;;Setting seed to 71
(define (problem instance_71)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 2.47412)
		(= (x b0) 1.0)
		(= (y b0) -9.0)

		(= (d p0) -133.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)