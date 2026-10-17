;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_44)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 191.1841167567681)

        (= (sled_supplies s0) 4.62544199817134)

        (= (factor_value f0) 9.06976636304855)
		(= (factor_value f1) 7.367208661063929)
		(= (factor_value f2) 3.631198850112746)
		(= (factor_value f3) 9.241997206546067)

        (= (dummy_1_value d1_0) 0.773479692229345)

        (= (dummy_2_value d2_0) 6.0426169326572365)
		(= (dummy_2_value d2_1) 1.700167959578315)
		(= (dummy_2_value d2_2) 9.20124855735089)

        (= (dummy_3_value d3_0) 19.447263278799586)
		(= (dummy_3_value d3_1) 31.507919959199192)

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

