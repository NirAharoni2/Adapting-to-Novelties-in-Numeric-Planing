;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_100)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.037416556731237)

        (= (sled_supplies s0) 1.2161142668615519)

        (= (factor_value f0) 0.6578856034831655)

        (= (dummy_1_value d1_0) 0.6775080855014322)
		(= (dummy_1_value d1_1) 0.7634952345781785)
		(= (dummy_1_value d1_2) 0.9230838986651695)
		(= (dummy_1_value d1_3) 0.8317127772754103)
		(= (dummy_1_value d1_4) 0.846783185226464)

        (= (dummy_2_value d2_0) 3.058821288376735)
		(= (dummy_2_value d2_1) 7.3011513491177205)
		(= (dummy_2_value d2_2) 4.3902120056965845)

        (= (dummy_3_value d3_0) 83.40088711072467)
		(= (dummy_3_value d3_1) 61.36729920053316)

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

