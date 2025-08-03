;; Automatically generated sailing problem
;;Setting seed to 17
(define (problem instance_17)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) -2.0)
		(= (y b0) -5.0)

		(= (d p0) -78.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)