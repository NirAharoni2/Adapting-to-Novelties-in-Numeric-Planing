;; Automatically generated sailing problem
;;Setting seed to 6
(define (problem instance_6)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) 1.0)
		(= (y b0) 10.0)

		(= (d p0) -46.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)