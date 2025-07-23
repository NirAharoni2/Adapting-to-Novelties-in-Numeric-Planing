;; Automatically generated sailing problem
;;Setting seed to 14
(define (problem instance_14)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) 9.0)
		(= (y b0) 9.0)

		(= (d p0) -82.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)