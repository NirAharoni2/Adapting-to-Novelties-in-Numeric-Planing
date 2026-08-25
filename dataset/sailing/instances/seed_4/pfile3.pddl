;; Automatically generated sailing problem
(define (problem instance_3)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -9.0)
		(= (y b0) -4.0)

		(= (d p0) 130.0)

		
	)

	(:goal
		(and
			(saved p0)
		)
	)
)