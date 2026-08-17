;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_95)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.406341683103882)

        (= (sled_supplies s0) 2.799844720093381)

        (= (factor_value f0) 0.7391274760073435)
		(= (factor_value f1) 0.5548420692053033)

        (= (dummy_1_value d1_0) 0.9473073686167051)
		(= (dummy_1_value d1_1) 0.7185690752420671)
		(= (dummy_1_value d1_2) 0.5664340390568666)
		(= (dummy_1_value d1_3) 0.7831666184453332)

        (= (dummy_2_value d2_0) 4.939482797251568)
		(= (dummy_2_value d2_1) 1.0227030016803043)
		(= (dummy_2_value d2_2) 3.7284646566102952)

        (= (dummy_3_value d3_0) 13.757486205885368)
		(= (dummy_3_value d3_1) 40.35179994459282)
		(= (dummy_3_value d3_2) 32.764958387255575)
		(= (dummy_3_value d3_3) 94.65420768238225)
		(= (dummy_3_value d3_4) 5.574225916876315)

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

