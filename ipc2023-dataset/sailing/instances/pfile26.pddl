;; Automatically generated sailing problem
;;Setting seed to 26
(define (problem instance_26)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) -9.0)
		(= (y b0) 7.0)

		(= (d p0) 124.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)