;; Automatically generated sailing problem
(define (problem instance_83)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -9.0)
		(= (y b0) 9.0)

		(= (d p0) 135.0)

		(= (drift_factor) 2.12654)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)