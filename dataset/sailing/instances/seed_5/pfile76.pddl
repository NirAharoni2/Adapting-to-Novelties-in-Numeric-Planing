;; Automatically generated sailing problem
(define (problem instance_76)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -10.0)
		(= (y b0) -9.0)

		(= (d p0) -48.0)

		(= (drift_factor) 2.24484)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)