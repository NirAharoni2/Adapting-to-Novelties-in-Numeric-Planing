;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_1)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 10.450501220916028)

        (= (sled_supplies s0) 4.714796801189916)

        (= (factor_value f0) 0.5099085882365368)
		(= (factor_value f1) 0.7747009244485015)

        (= (dummy_1_value d1_0) 0.6446878753619356)
		(= (dummy_1_value d1_1) 0.9950124128355182)
		(= (dummy_1_value d1_2) 0.529423528246314)

        (= (dummy_2_value d2_0) 5.683053425178826)

        (= (dummy_3_value d3_0) 36.66424604051993)
		(= (dummy_3_value d3_1) 78.19480947474977)
		(= (dummy_3_value d3_2) 82.86029622340311)
		(= (dummy_3_value d3_3) 26.910238282573538)

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

