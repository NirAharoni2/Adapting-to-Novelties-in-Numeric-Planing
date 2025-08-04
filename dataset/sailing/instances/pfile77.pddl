;; Automatically generated sailing problem
;;Setting seed to 77
(define (problem instance_77)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 2.18491)
		(= (x b0) -5.0)
		(= (y b0) -10.0)

		(= (d p0) -118.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)