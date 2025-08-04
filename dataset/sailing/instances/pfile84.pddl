;; Automatically generated sailing problem
;;Setting seed to 84
(define (problem instance_84)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 2.49206)
		(= (x b0) 1.0)
		(= (y b0) -7.0)

		(= (d p0) 24.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)