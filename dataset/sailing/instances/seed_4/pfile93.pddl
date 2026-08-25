;; Automatically generated sailing problem
(define (problem instance_93)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 7.0)
		(= (y b0) 8.0)

		(= (d p0) -104.0)

		(= (drift_factor) 2.27165)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)