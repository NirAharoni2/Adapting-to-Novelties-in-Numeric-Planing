;; Automatically generated sailing problem
;;Setting seed to 18
(define (problem instance_18)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) 2.0)
		(= (y b0) -4.0)

		(= (d p0) -138.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)