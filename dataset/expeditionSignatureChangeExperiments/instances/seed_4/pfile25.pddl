;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_25)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 11.961459758832078)

        (= (sled_supplies s0) 1.4833827778053648)

        (= (factor_value f0) 0.8006851320943135)

        (= (dummy_1_value d1_0) 0.7479433586471474)
		(= (dummy_1_value d1_1) 0.6618555909476973)
		(= (dummy_1_value d1_2) 0.7149997157741725)

        (= (dummy_2_value d2_0) 4.652270261539696)
		(= (dummy_2_value d2_1) 1.3258828135330143)
		(= (dummy_2_value d2_2) 9.267301703549457)
		(= (dummy_2_value d2_3) 2.631081688227025)

        (= (dummy_3_value d3_0) 36.45898237605166)

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

