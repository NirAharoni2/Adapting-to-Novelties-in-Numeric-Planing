;; Automatically generated sailing problem
;;Setting seed to 30
(define (problem instance_30)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) 1.0)
		(= (y b0) -10.0)

		(= (d p0) 146.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)