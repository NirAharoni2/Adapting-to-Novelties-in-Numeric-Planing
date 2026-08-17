;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_88)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.858871546285815)

        (= (sled_supplies s0) 1.8882390830129574)

        (= (factor_value f0) 0.6921899879356066)

        (= (dummy_1_value d1_0) 0.6258930353209894)
		(= (dummy_1_value d1_1) 0.5780160756562907)
		(= (dummy_1_value d1_2) 0.7734842276276805)

        (= (dummy_2_value d2_0) 2.837498693517359)
		(= (dummy_2_value d2_1) 7.659312036687547)
		(= (dummy_2_value d2_2) 3.8843925747328605)
		(= (dummy_2_value d2_3) 6.213365023545946)
		(= (dummy_2_value d2_4) 5.918085625191438)

        (= (dummy_3_value d3_0) 63.16443229117918)
		(= (dummy_3_value d3_1) 16.37591501004124)
		(= (dummy_3_value d3_2) 26.369553462968117)
		(= (dummy_3_value d3_3) 69.17661494684229)

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

