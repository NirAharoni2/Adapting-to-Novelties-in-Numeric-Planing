;; Automatically generated sailing problem
;;Setting seed to 47
(define (problem instance_47)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) 9.0)
		(= (y b0) 2.0)

		(= (d p0) -53.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)