;; Automatically generated sailing problem
;;Setting seed to 41
(define (problem instance_41)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 2.3952)
		(= (x b0) -1.0)
		(= (y b0) 2.0)
		(= (x b1) -5.0)
		(= (y b1) -9.0)

		(= (d p0) -73.0)
		(= (d p1) -88.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)