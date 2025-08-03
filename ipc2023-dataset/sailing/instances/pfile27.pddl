;; Automatically generated sailing problem
;;Setting seed to 27
(define (problem instance_27)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) -10.0)
		(= (y b0) -9.0)

		(= (d p0) -72.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)