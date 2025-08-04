;; Automatically generated sailing problem
;;Setting seed to 21
(define (problem instance_21)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) 6.0)
		(= (y b0) -3.0)

		(= (d p0) -126.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)