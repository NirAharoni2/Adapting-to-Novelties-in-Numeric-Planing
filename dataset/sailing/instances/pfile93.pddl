;; Automatically generated sailing problem
;;Setting seed to 93
(define (problem instance_93)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 4.54135)
		(= (x b0) -2.0)
		(= (y b0) 0.0)

		(= (d p0) -69.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)