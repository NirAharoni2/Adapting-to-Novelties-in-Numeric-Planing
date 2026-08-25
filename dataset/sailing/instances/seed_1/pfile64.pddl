;; Automatically generated sailing problem
(define (problem instance_64)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 8.0)
		(= (y b0) -7.0)

		(= (d p0) -126.0)

		(= (drift_factor) 2.65748)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)