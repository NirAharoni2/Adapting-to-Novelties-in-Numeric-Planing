;; Automatically generated sailing problem
;;Setting seed to 28
(define (problem instance_28)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) -10.0)
		(= (y b0) 5.0)

		(= (d p0) -91.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)