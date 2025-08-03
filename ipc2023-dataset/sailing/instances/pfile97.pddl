;; Automatically generated sailing problem
;;Setting seed to 97
(define (problem instance_97)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 3.4389)
		(= (x b0) -7.0)
		(= (y b0) 10.0)

		(= (d p0) 95.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)