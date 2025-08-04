;; Automatically generated sailing problem
;;Setting seed to 85
(define (problem instance_85)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 2.3316)
		(= (x b0) 4.0)
		(= (y b0) 6.0)

		(= (d p0) 31.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)