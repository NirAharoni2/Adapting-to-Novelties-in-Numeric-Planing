;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_67)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.949360281844601)

        (= (sled_supplies s0) 5.869671659179665)

        (= (factor_value f0) 0.965017624589681)
		(= (factor_value f1) 0.8295790986181352)
		(= (factor_value f2) 0.7889819281717516)
		(= (factor_value f3) 0.8098831212229936)
		(= (factor_value f4) 0.9229610056894624)

        (= (dummy_1_value d1_0) 0.9136575151520616)
		(= (dummy_1_value d1_1) 0.7910985437914808)
		(= (dummy_1_value d1_2) 0.6694452020304722)
		(= (dummy_1_value d1_3) 0.8234635979689116)

        (= (dummy_2_value d2_0) 2.7576418914990044)
		(= (dummy_2_value d2_1) 5.627994732841956)
		(= (dummy_2_value d2_2) 5.449028034268709)
		(= (dummy_2_value d2_3) 8.57783382750717)
		(= (dummy_2_value d2_4) 6.471511163357865)

        (= (dummy_3_value d3_0) 66.3829081541764)
		(= (dummy_3_value d3_1) 94.04394020593482)
		(= (dummy_3_value d3_2) 85.65718677850846)
		(= (dummy_3_value d3_3) 60.396768453483745)

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

