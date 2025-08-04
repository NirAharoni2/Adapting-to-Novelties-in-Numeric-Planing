;; Automatically generated sailing problem
;;Setting seed to 7
(define (problem instance_7)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) -2.0)
		(= (y b0) -9.0)

		(= (d p0) 5.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)