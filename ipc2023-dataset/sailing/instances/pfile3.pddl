;; Automatically generated sailing problem
;;Setting seed to 3
(define (problem instance_3)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) 4.0)
		(= (y b0) -8.0)

		(= (d p0) -139.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)