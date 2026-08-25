;; Automatically generated sailing problem
(define (problem instance_62)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -6.0)
		(= (y b0) 9.0)

		(= (d p0) 110.0)

		(= (drift_factor) 3.04594)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)