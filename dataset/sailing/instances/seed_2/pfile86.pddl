;; Automatically generated sailing problem
(define (problem instance_86)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -7.0)
		(= (y b0) -9.0)

		(= (d p0) -128.0)

		(= (drift_factor) 3.31325)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)