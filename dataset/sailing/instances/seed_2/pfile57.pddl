;; Automatically generated sailing problem
(define (problem instance_57)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 4.0)
		(= (y b0) -7.0)

		(= (d p0) 114.0)

		(= (drift_factor) 2.3075)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)