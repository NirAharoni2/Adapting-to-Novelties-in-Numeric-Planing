;; Automatically generated sailing problem
(define (problem instance_99)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 7.0)
		(= (y b0) -10.0)

		(= (d p0) -132.0)

		(= (drift_factor) 3.0236)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)