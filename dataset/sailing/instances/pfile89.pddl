;; Automatically generated sailing problem
;;Setting seed to 89
(define (problem instance_89)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 4.98007)
		(= (x b0) -0.0)
		(= (y b0) 4.0)

		(= (d p0) 31.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)