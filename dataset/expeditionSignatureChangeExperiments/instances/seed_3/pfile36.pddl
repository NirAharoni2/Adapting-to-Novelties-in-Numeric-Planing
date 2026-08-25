;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_36)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 12.458771259799395)

        (= (sled_supplies s0) 1.0280380455110798)

        (= (factor_value f0) 0.5188124043672848)

        (= (dummy_1_value d1_0) 0.7340960269499162)
		(= (dummy_1_value d1_1) 0.5983689008161117)
		(= (dummy_1_value d1_2) 0.891002615121391)
		(= (dummy_1_value d1_3) 0.5714786391830506)

        (= (dummy_2_value d2_0) 4.9966166443675775)

        (= (dummy_3_value d3_0) 90.93843931478985)
		(= (dummy_3_value d3_1) 44.94085680453632)

        (= (waypoint_supplies w0_0) 1000)
		(= (waypoint_supplies w0_1) 0.0)
		(= (waypoint_supplies w0_2) 0.0)
		(= (waypoint_supplies w0_3) 0.0)
		(= (waypoint_supplies w0_4) 0.0)

		(is_next w0_0 w0_1)
		(is_next w0_1 w0_2)
		(is_next w0_2 w0_3)
		(is_next w0_3 w0_4)
	)
	(:goal
		(and
			(at s0 w0_4)
		)
	)
)

