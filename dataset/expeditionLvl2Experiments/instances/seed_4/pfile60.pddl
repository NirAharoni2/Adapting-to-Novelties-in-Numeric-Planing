;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_60)
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

        (= (sled_capacity s0) 8.930039166792092)

        (= (sled_supplies s0) 2.9244491658277774)

        (= (factor_value f0) 0.8384722668338223)
		(= (factor_value f1) 0.9707907463876131)
		(= (factor_value f2) 0.7168378624531647)

        (= (dummy_1_value d1_0) 0.6685780848111061)
		(= (dummy_1_value d1_1) 0.7181426189785967)
		(= (dummy_1_value d1_2) 0.8676697149718375)
		(= (dummy_1_value d1_3) 0.9106160397771706)

        (= (dummy_2_value d2_0) 6.6782265361974344)
		(= (dummy_2_value d2_1) 8.12715975638394)
		(= (dummy_2_value d2_2) 6.9918814020685245)
		(= (dummy_2_value d2_3) 7.998722782363327)

        (= (dummy_3_value d3_0) 13.689703932661018)
		(= (dummy_3_value d3_1) 83.16793931140067)
		(= (dummy_3_value d3_2) 53.81704248386495)

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

