;; Automatically generated sailing problem
;;Setting seed to 9
(define (problem instance_9)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) -6.0)
		(= (y b0) 3.0)

		(= (d p0) -123.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)