;; Automatically generated sailing problem
;;Setting seed to 5
(define (problem instance_5)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 4.21338)
		(= (x b0) -10.0)
		(= (y b0) -5.0)
		(= (x b1) 2.0)
		(= (y b1) 4.0)

		(= (d p0) -11.0)
		(= (d p1) -65.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)