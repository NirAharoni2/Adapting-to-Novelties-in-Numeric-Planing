;; Automatically generated sailing problem
(define (problem instance_99)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -9.0)
		(= (y b0) -9.0)

		(= (d p0) -90.0)

		(= (drift_factor) 2.70986)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)