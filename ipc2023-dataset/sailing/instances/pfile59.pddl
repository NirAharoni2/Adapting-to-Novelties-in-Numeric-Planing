;; Automatically generated sailing problem
;;Setting seed to 59
(define (problem instance_59)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 3.25964)
		(= (x b0) 6.0)
		(= (y b0) -6.0)

		(= (d p0) -25.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)