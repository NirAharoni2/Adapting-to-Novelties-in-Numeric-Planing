;; Automatically generated sailing problem
;;Setting seed to 49
(define (problem instance_49)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 3.90952)
		(= (x b0) 1.0)
		(= (y b0) -6.0)
		(= (x b1) 5.0)
		(= (y b1) 7.0)

		(= (d p0) -46.0)
		(= (d p1) 25.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)