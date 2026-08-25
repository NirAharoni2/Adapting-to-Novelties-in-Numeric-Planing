;; Automatically generated sailing problem
(define (problem instance_32)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 4.0)
		(= (y b0) 5.0)

		(= (d p0) 126.0)

		
	)

	(:goal
		(and
			(saved p0)
		)
	)
)