;; Automatically generated sailing problem
;;Setting seed to 19
(define (problem instance_19)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) 3.0)
		(= (y b0) 6.0)

		(= (d p0) -119.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)