;; Automatically generated sailing problem
;;Setting seed to 22
(define (problem instance_22)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) 1.0)
		(= (y b0) 6.0)

		(= (d p0) -63.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)