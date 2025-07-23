;; Automatically generated sailing problem
;;Setting seed to 31
(define (problem instance_31)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) -6.0)
		(= (y b0) 3.0)

		(= (d p0) 146.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)