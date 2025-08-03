;; Automatically generated sailing problem
;;Setting seed to 42
(define (problem instance_42)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) 8.0)
		(= (y b0) 3.0)

		(= (d p0) -125.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)