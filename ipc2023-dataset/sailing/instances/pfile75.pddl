;; Automatically generated sailing problem
;;Setting seed to 75
(define (problem instance_75)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 4.29169)
		(= (x b0) -9.0)
		(= (y b0) -9.0)

		(= (d p0) 103.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)