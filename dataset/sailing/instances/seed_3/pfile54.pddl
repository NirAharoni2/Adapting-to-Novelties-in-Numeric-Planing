;; Automatically generated sailing problem
(define (problem instance_54)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 4.0)
		(= (y b0) 10.0)

		(= (d p0) -116.0)

		(= (drift_factor) 2.76699)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)