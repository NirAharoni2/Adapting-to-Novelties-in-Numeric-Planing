;; Automatically generated sailing problem
(define (problem instance_98)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -8.0)
		(= (y b0) 7.0)

		(= (d p0) -140.0)

		(= (drift_factor) 2.45082)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)