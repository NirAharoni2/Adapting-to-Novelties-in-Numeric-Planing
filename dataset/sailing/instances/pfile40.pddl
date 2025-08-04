;; Automatically generated sailing problem
;;Setting seed to 40
(define (problem instance_40)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) 8.0)
		(= (y b0) -7.0)

		(= (d p0) -80.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)