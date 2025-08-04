;; Automatically generated sailing problem
;;Setting seed to 92
(define (problem instance_92)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 3.13235)
		(= (x b0) 2.0)
		(= (y b0) 2.0)

		(= (d p0) 15.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)