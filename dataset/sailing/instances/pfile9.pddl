;; Automatically generated sailing problem
;;Setting seed to 9
(define (problem instance_9)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) -10.0)
		(= (y b0) -7.0)

		(= (d p0) -115.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)