;; Automatically generated sailing problem
;;Setting seed to 32
(define (problem instance_32)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) 6.0)
		(= (y b0) -4.0)

		(= (d p0) 36.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)