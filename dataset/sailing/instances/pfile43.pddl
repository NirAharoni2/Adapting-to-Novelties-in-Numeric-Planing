;; Automatically generated sailing problem
;;Setting seed to 43
(define (problem instance_43)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) 4.0)
		(= (y b0) -6.0)

		(= (d p0) -139.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)