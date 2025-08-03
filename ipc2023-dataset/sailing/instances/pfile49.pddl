;; Automatically generated sailing problem
;;Setting seed to 49
(define (problem instance_49)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) -2.0)
		(= (y b0) 2.0)

		(= (d p0) -128.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)