;; Automatically generated sailing problem
(define (problem instance_13)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -5.0)
		(= (y b0) 3.0)

		(= (d p0) 50.0)

		
	)

	(:goal
		(and
			(saved p0)
		)
	)
)