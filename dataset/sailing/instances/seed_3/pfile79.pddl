;; Automatically generated sailing problem
(define (problem instance_79)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -5.0)
		(= (y b0) 4.0)

		(= (d p0) -106.0)

		(= (drift_factor) 2.14947)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)