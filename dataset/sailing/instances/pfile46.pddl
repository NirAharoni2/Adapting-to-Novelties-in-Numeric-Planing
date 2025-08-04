;; Automatically generated sailing problem
;;Setting seed to 46
(define (problem instance_46)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (x b0) -2.0)
		(= (y b0) -8.0)

		(= (d p0) -111.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)