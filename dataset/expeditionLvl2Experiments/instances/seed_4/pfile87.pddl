;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_87)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.537487280691419)

        (= (sled_supplies s0) 2.925199549199675)

        (= (factor_value f0) 0.7817836103459399)
		(= (factor_value f1) 0.6938574732192995)
		(= (factor_value f2) 0.8459043127567831)

        (= (dummy_1_value d1_0) 0.9868575256605349)
		(= (dummy_1_value d1_1) 0.5920450516973826)
		(= (dummy_1_value d1_2) 0.7801014752436758)
		(= (dummy_1_value d1_3) 0.9442042782669249)

        (= (dummy_2_value d2_0) 5.977202971491892)
		(= (dummy_2_value d2_1) 3.125869253626632)
		(= (dummy_2_value d2_2) 2.677171967233685)
		(= (dummy_2_value d2_3) 7.353234903824023)

        (= (dummy_3_value d3_0) 57.702521682229374)
		(= (dummy_3_value d3_1) 8.743966640431076)
		(= (dummy_3_value d3_2) 11.477801318824675)

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

