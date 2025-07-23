;; Automatically generated sailing problem
;;Setting seed to 3
(define (problem instance_3)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) 6.0)
		(= (y b0) -10.0)

		(= (d p0) -70.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)