;; Automatically generated sailing problem
;;Setting seed to 29
(define (problem instance_29)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) -3.0)
		(= (y b0) 2.0)

		(= (d p0) 107.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)