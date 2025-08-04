;; Automatically generated sailing problem
;;Setting seed to 33
(define (problem instance_33)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) 6.0)
		(= (y b0) 7.0)

		(= (d p0) -77.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)