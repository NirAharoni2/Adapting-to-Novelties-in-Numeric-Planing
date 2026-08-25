;; Automatically generated sailing problem
(define (problem instance_12)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -10.0)
		(= (y b0) -3.0)

		(= (d p0) -71.0)

		
	)

	(:goal
		(and
			(saved p0)
		)
	)
)