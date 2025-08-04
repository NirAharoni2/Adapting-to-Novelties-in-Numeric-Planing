;; Automatically generated sailing problem
;;Setting seed to 37
(define (problem instance_37)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) 1.0)
		(= (y b0) 3.0)

		(= (d p0) 135.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)