;; Automatically generated sailing problem
;;Setting seed to 39
(define (problem instance_39)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) -9.0)
		(= (y b0) 6.0)

		(= (d p0) 100.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)