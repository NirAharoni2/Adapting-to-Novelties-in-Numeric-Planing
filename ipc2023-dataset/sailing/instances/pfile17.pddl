;; Automatically generated sailing problem
;;Setting seed to 17
(define (problem instance_17)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) -8.0)
		(= (y b0) 8.0)

		(= (d p0) -72.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)