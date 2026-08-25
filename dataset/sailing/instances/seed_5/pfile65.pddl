;; Automatically generated sailing problem
(define (problem instance_65)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -6.0)
		(= (y b0) -4.0)

		(= (d p0) -116.0)

		(= (drift_factor) 2.13677)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)