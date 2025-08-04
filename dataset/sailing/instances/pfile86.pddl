;; Automatically generated sailing problem
;;Setting seed to 86
(define (problem instance_86)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 2.4911)
		(= (x b0) -6.0)
		(= (y b0) 9.0)

		(= (d p0) 129.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)