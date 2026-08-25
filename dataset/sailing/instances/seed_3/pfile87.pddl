;; Automatically generated sailing problem
(define (problem instance_87)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 5.0)
		(= (y b0) 8.0)

		(= (d p0) -60.0)

		(= (drift_factor) 2.80832)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)