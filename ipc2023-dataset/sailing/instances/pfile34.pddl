;; Automatically generated sailing problem
;;Setting seed to 34
(define (problem instance_34)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) -8.0)
		(= (y b0) -1.0)

		(= (d p0) -22.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)