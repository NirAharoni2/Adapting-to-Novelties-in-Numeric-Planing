;; Automatically generated sailing problem
;;Setting seed to 59
(define (problem instance_59)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 3.89855)
		(= (x b0) -5.0)
		(= (y b0) 8.0)
		(= (x b1) 8.0)
		(= (y b1) -1.0)

		(= (d p0) 9.0)
		(= (d p1) 52.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)