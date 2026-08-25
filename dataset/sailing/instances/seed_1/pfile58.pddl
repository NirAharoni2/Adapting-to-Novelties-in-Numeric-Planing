;; Automatically generated sailing problem
(define (problem instance_58)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -4.0)
		(= (y b0) 9.0)

		(= (d p0) 123.0)

		(= (drift_factor) 2.04764)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)