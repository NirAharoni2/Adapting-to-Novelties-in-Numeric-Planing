;; Automatically generated sailing problem
;;Setting seed to 50
(define (problem instance_50)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) -5.0)
		(= (y b0) -1.0)

		(= (d p0) 133.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)