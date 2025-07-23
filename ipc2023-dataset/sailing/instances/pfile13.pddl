;; Automatically generated sailing problem
;;Setting seed to 13
(define (problem instance_13)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) -6.0)
		(= (y b0) -9.0)

		(= (d p0) 89.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)