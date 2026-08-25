;; Automatically generated sailing problem
(define (problem instance_88)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 4.0)
		(= (y b0) -4.0)

		(= (d p0) 67.0)

		(= (drift_factor) 2.76063)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)