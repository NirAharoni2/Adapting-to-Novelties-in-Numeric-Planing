;; Automatically generated sailing problem
;;Setting seed to 61
(define (problem instance_61)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 2.51827)
		(= (x b0) -3.0)
		(= (y b0) 5.0)

		(= (d p0) -110.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)