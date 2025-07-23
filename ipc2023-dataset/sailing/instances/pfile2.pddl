;; Automatically generated sailing problem
;;Setting seed to 2
(define (problem instance_2)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) -2.0)
		(= (y b0) -5.0)

		(= (d p0) -75.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)