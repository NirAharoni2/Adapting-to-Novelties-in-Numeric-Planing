;; Automatically generated sailing problem
;;Setting seed to 25
(define (problem instance_25)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) 9.0)
		(= (y b0) 1.0)

		(= (d p0) 115.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)