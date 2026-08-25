;; Automatically generated sailing problem
(define (problem instance_77)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 5.0)
		(= (y b0) 5.0)

		(= (d p0) 48.0)

		(= (drift_factor) 2.94128)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)