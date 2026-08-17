;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_71)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.0073678369289745)

        (= (sled_supplies s0) 1.2270955399715295)

        (= (factor_value f0) 0.6476939358577056)
		(= (factor_value f1) 0.7847441795202176)
		(= (factor_value f2) 0.5422286341982621)

        (= (dummy_1_value d1_0) 0.7531027913508381)
		(= (dummy_1_value d1_1) 0.7881037266219655)
		(= (dummy_1_value d1_2) 0.7159953759886332)
		(= (dummy_1_value d1_3) 0.8703819658248879)
		(= (dummy_1_value d1_4) 0.8333408465343579)

        (= (dummy_2_value d2_0) 6.227399143306292)
		(= (dummy_2_value d2_1) 8.343755560153813)

        (= (dummy_3_value d3_0) 15.156632167318893)
		(= (dummy_3_value d3_1) 18.657658513403014)
		(= (dummy_3_value d3_2) 29.07065512151688)

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

