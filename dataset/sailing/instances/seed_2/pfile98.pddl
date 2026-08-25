;; Automatically generated sailing problem
(define (problem instance_98)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 8.0)
		(= (y b0) 6.0)

		(= (d p0) -114.0)

		(= (drift_factor) 2.30174)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)