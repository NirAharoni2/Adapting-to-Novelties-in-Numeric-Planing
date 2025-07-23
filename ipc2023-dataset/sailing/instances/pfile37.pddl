;; Automatically generated sailing problem
;;Setting seed to 37
(define (problem instance_37)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) -9.0)
		(= (y b0) 9.0)

		(= (d p0) -131.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)