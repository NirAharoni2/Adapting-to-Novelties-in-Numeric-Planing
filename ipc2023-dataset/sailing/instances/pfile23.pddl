;; Automatically generated sailing problem
;;Setting seed to 23
(define (problem instance_23)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) -8.0)
		(= (y b0) -1.0)

		(= (d p0) -98.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)