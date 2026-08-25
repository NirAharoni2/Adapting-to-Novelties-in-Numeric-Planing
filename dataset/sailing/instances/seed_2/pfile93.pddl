;; Automatically generated sailing problem
(define (problem instance_93)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 7.0)
		(= (y b0) -9.0)

		(= (d p0) -83.0)

		(= (drift_factor) 3.23462)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)