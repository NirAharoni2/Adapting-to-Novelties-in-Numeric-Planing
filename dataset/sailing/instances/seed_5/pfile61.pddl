;; Automatically generated sailing problem
(define (problem instance_61)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -6.0)
		(= (y b0) -3.0)

		(= (d p0) -144.0)

		(= (drift_factor) 2.64751)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)