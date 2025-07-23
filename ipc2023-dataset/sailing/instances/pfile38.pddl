;; Automatically generated sailing problem
;;Setting seed to 38
(define (problem instance_38)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) 2.0)
		(= (y b0) -1.0)

		(= (d p0) -88.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)