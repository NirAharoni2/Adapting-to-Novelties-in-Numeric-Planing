;; Automatically generated sailing problem
(define (problem instance_32)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 10.0)
		(= (y b0) 7.0)

		(= (d p0) -114.0)

		
	)

	(:goal
		(and
			(saved p0)
		)
	)
)