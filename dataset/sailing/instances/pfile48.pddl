;; Automatically generated sailing problem
;;Setting seed to 48
(define (problem instance_48)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) -9.0)
		(= (y b0) -7.0)

		(= (d p0) 106.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)