;; Automatically generated sailing problem
;;Setting seed to 52
(define (problem instance_52)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 2.27348)
		(= (x b0) -4.0)
		(= (y b0) -4.0)
		(= (x b1) -4.0)
		(= (y b1) 8.0)

		(= (d p0) -106.0)
		(= (d p1) 58.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)