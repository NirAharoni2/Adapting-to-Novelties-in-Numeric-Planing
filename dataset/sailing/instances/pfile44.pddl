;; Automatically generated sailing problem
;;Setting seed to 44
(define (problem instance_44)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) 4.0)
		(= (y b0) 1.0)

		(= (d p0) 40.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)