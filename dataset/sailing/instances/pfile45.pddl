;; Automatically generated sailing problem
;;Setting seed to 45
(define (problem instance_45)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) -7.0)
		(= (y b0) 2.0)

		(= (d p0) 123.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)