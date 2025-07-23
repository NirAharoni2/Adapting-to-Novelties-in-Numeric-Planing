;; Automatically generated sailing problem
;;Setting seed to 16
(define (problem instance_16)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) 0.0)
		(= (y b0) 5.0)

		(= (d p0) 122.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)