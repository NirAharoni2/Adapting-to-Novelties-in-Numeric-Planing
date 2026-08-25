;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_26)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 11.81205619876031)

        (= (sled_supplies s0) 3.9738784890419714)

        (= (factor_value f0) 0.6651860228115448)
		(= (factor_value f1) 0.5062229564908711)
		(= (factor_value f2) 0.7922097244084244)

        (= (dummy_1_value d1_0) 0.9134615144251463)
		(= (dummy_1_value d1_1) 0.8634165785571063)
		(= (dummy_1_value d1_2) 0.5476485128259655)
		(= (dummy_1_value d1_3) 0.7651561446708585)
		(= (dummy_1_value d1_4) 0.585597711170345)

        (= (dummy_2_value d2_0) 7.384908983828852)

        (= (dummy_3_value d3_0) 45.17530732381104)
		(= (dummy_3_value d3_1) 93.91521953807306)

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

