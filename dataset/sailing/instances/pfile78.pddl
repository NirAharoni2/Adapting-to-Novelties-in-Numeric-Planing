;; Automatically generated sailing problem
;;Setting seed to 78
(define (problem instance_78)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 4.83928)
		(= (x b0) -5.0)
		(= (y b0) -5.0)

		(= (d p0) 4.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)