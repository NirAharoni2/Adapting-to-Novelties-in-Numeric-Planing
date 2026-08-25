;; Automatically generated sailing problem
(define (problem instance_63)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -5.0)
		(= (y b0) 8.0)

		(= (d p0) -62.0)

		(= (drift_factor) 3.23656)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)