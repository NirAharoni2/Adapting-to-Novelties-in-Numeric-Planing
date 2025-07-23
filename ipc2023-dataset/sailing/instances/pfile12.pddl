;; Automatically generated sailing problem
;;Setting seed to 12
(define (problem instance_12)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) -5.0)
		(= (y b0) 6.0)

		(= (d p0) -122.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)