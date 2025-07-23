;; Automatically generated sailing problem
;;Setting seed to 21
(define (problem instance_21)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) -1.0)
		(= (y b0) -5.0)

		(= (d p0) -66.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)