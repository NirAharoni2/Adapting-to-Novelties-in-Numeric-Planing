;; Automatically generated sailing problem
(define (problem instance_51)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 3.0)
		(= (y b0) -5.0)

		(= (d p0) -140.0)

		(= (drift_factor) 2.1547)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)