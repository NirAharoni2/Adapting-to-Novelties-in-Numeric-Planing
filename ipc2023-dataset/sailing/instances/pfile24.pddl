;; Automatically generated sailing problem
;;Setting seed to 24
(define (problem instance_24)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) 10.0)
		(= (y b0) -1.0)

		(= (d p0) 50.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)