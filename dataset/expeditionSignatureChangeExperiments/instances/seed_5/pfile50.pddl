;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_50)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 10.830093761688508)

        (= (sled_supplies s0) 3.384051478027218)

        (= (factor_value f0) 0.8142852382966685)
		(= (factor_value f1) 0.7283430601303313)
		(= (factor_value f2) 0.7019760860448105)
		(= (factor_value f3) 0.8550020180823789)

        (= (dummy_1_value d1_0) 0.5491710608236353)
		(= (dummy_1_value d1_1) 0.7979780294102488)
		(= (dummy_1_value d1_2) 0.7285734589956341)

        (= (dummy_2_value d2_0) 9.55137765825692)
		(= (dummy_2_value d2_1) 7.921335830715186)
		(= (dummy_2_value d2_2) 5.006911344659522)
		(= (dummy_2_value d2_3) 3.106041224304257)

        (= (dummy_3_value d3_0) 25.72359598876949)
		(= (dummy_3_value d3_1) 64.61548227730202)
		(= (dummy_3_value d3_2) 72.21537325674865)
		(= (dummy_3_value d3_3) 26.44512174534139)
		(= (dummy_3_value d3_4) 46.932565747744086)

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

