;; Automatically generated sailing problem
;;Setting seed to 35
(define (problem instance_35)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) -9.0)
		(= (y b0) -9.0)

		(= (d p0) 147.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)