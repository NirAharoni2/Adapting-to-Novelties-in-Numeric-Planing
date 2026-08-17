;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_55)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.0927314675071464)

        (= (sled_supplies s0) 1.6774620506408482)

        (= (factor_value f0) 0.7649425113472305)
		(= (factor_value f1) 0.9792991383736818)
		(= (factor_value f2) 0.9147958937547553)
		(= (factor_value f3) 0.7635291368904826)
		(= (factor_value f4) 0.5774608180991899)

        (= (dummy_1_value d1_0) 0.6476563224765703)
		(= (dummy_1_value d1_1) 0.5599524044174539)
		(= (dummy_1_value d1_2) 0.8216252050772055)

        (= (dummy_2_value d2_0) 1.1784032387067875)

        (= (dummy_3_value d3_0) 35.64405569428243)

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

