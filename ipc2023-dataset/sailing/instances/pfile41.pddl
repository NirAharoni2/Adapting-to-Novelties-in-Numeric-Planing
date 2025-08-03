;; Automatically generated sailing problem
;;Setting seed to 41
(define (problem instance_41)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) -3.0)
		(= (y b0) 4.0)

		(= (d p0) 33.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)