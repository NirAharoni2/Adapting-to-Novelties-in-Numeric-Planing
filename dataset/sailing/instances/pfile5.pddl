;; Automatically generated sailing problem
;;Setting seed to 5
(define (problem instance_5)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) 3.0)
		(= (y b0) -4.0)

		(= (d p0) -130.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)