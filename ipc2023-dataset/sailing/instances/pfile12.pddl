;; Automatically generated sailing problem
;;Setting seed to 12
(define (problem instance_12)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) 3.0)
		(= (y b0) 2.0)

		(= (d p0) -115.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)