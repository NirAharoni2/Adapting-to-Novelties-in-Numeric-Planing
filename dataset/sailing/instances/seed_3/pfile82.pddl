;; Automatically generated sailing problem
(define (problem instance_82)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 6.0)
		(= (y b0) 7.0)

		(= (d p0) 148.0)

		(= (drift_factor) 3.3368)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)