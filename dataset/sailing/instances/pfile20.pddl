;; Automatically generated sailing problem
;;Setting seed to 20
(define (problem instance_20)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) 3.0)
		(= (y b0) 1.0)

		(= (d p0) 64.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)