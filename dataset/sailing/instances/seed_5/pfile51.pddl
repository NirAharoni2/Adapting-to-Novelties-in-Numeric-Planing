;; Automatically generated sailing problem
(define (problem instance_51)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 3.0)
		(= (y b0) -7.0)

		(= (d p0) 138.0)

		(= (drift_factor) 3.11753)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)