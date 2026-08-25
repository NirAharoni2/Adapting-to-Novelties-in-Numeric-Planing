;; Automatically generated sailing problem
(define (problem instance_54)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -9.0)
		(= (y b0) 3.0)

		(= (d p0) -83.0)

		(= (drift_factor) 2.03056)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)