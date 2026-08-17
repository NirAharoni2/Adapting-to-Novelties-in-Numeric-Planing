;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_34)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.918791367237036)

        (= (sled_supplies s0) 5.566246868338179)

        (= (factor_value f0) 0.9564423686421119)
		(= (factor_value f1) 0.9638086212487418)
		(= (factor_value f2) 0.9848760715891709)

        (= (dummy_1_value d1_0) 0.9078146438657564)
		(= (dummy_1_value d1_1) 0.9627216125956564)
		(= (dummy_1_value d1_2) 0.961144661825029)

        (= (dummy_2_value d2_0) 8.212309103495667)
		(= (dummy_2_value d2_1) 2.2112309443841514)
		(= (dummy_2_value d2_2) 5.713405500572566)
		(= (dummy_2_value d2_3) 6.180436117037343)
		(= (dummy_2_value d2_4) 9.932477751875421)

        (= (dummy_3_value d3_0) 78.61090644665902)

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

