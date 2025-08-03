;; Automatically generated sailing problem
;;Setting seed to 55
(define (problem instance_55)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 4.09778)
		(= (x b0) -3.0)
		(= (y b0) -2.0)

		(= (d p0) -80.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)