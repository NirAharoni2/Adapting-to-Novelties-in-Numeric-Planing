;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_43)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 12.66389976570181)

        (= (sled_supplies s0) 1.691974855071261)

        (= (factor_value f0) 0.804490381886682)
		(= (factor_value f1) 0.5744273772309128)

        (= (dummy_1_value d1_0) 0.706900958978244)
		(= (dummy_1_value d1_1) 0.6398956458276024)

        (= (dummy_2_value d2_0) 7.2588055413378285)
		(= (dummy_2_value d2_1) 3.403515260085002)
		(= (dummy_2_value d2_2) 2.9296027905406308)

        (= (dummy_3_value d3_0) 37.40075545982766)
		(= (dummy_3_value d3_1) 47.584356568191865)

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

