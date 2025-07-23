;; Automatically generated sailing problem
;;Setting seed to 22
(define (problem instance_22)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) -9.0)
		(= (y b0) -5.0)

		(= (d p0) -47.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)