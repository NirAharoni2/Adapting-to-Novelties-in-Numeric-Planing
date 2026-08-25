;; Automatically generated sailing problem
(define (problem instance_85)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -9.0)
		(= (y b0) 9.0)

		(= (d p0) 117.0)

		(= (drift_factor) 2.75324)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)