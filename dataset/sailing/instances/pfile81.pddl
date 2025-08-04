;; Automatically generated sailing problem
;;Setting seed to 81
(define (problem instance_81)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 3.76842)
		(= (x b0) -3.0)
		(= (y b0) -9.0)

		(= (d p0) -63.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)