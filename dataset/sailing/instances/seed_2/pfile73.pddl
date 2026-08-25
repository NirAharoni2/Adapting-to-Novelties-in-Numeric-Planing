;; Automatically generated sailing problem
(define (problem instance_73)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 4.0)
		(= (y b0) -8.0)

		(= (d p0) -54.0)

		(= (drift_factor) 2.27968)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)