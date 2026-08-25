;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_15)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 11.21063031250051)

        (= (sled_supplies s0) 0.80310245660212)

        (= (factor_value f0) 0.589886220715839)

        (= (dummy_1_value d1_0) 0.6249830404450785)
		(= (dummy_1_value d1_1) 0.8079904902730635)
		(= (dummy_1_value d1_2) 0.8767716547199476)
		(= (dummy_1_value d1_3) 0.6968649746958018)
		(= (dummy_1_value d1_4) 0.6837356746176388)

        (= (dummy_2_value d2_0) 4.569756935901069)
		(= (dummy_2_value d2_1) 4.152560353351745)
		(= (dummy_2_value d2_2) 4.763958861655215)

        (= (dummy_3_value d3_0) 9.24278819678079)
		(= (dummy_3_value d3_1) 50.53065145232635)
		(= (dummy_3_value d3_2) 97.33258928373053)
		(= (dummy_3_value d3_3) 41.87030586240194)
		(= (dummy_3_value d3_4) 74.99349107401098)

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

