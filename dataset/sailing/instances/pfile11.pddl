;; Automatically generated sailing problem
;;Setting seed to 11
(define (problem instance_11)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) 5.0)
		(= (y b0) 5.0)

		(= (d p0) 148.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)