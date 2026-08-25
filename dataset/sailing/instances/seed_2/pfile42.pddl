;; Automatically generated sailing problem
(define (problem instance_42)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 9.0)
		(= (y b0) 9.0)

		(= (d p0) -126.0)

		
	)

	(:goal
		(and
			(saved p0)
		)
	)
)