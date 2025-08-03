;; Automatically generated sailing problem
;;Setting seed to 8
(define (problem instance_8)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) -2.0)
		(= (y b0) -5.0)

		(= (d p0) 140.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)