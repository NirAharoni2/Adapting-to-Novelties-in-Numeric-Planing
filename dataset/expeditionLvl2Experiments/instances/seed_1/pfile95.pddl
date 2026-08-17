;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_95)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.15286079122882)

        (= (sled_supplies s0) 4.8211568776548726)

        (= (factor_value f0) 0.7361824834267781)
		(= (factor_value f1) 0.5133824850733637)
		(= (factor_value f2) 0.5335684074096754)
		(= (factor_value f3) 0.898205187095737)

        (= (dummy_1_value d1_0) 0.9901172391683728)
		(= (dummy_1_value d1_1) 0.715504087849917)

        (= (dummy_2_value d2_0) 5.228092773980629)

        (= (dummy_3_value d3_0) 60.66676658861039)
		(= (dummy_3_value d3_1) 10.590015536118823)
		(= (dummy_3_value d3_2) 54.329711027118506)

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

