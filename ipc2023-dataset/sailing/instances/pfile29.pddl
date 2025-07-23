;; Automatically generated sailing problem
;;Setting seed to 29
(define (problem instance_29)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) 4.0)
		(= (y b0) 8.0)

		(= (d p0) -85.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)