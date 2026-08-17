;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_100)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.64759831229777)

        (= (sled_supplies s0) 6.202856451873178)

        (= (factor_value f0) 0.575091280892239)

        (= (dummy_1_value d1_0) 0.9328033671428148)

        (= (dummy_2_value d2_0) 1.807040583590875)
		(= (dummy_2_value d2_1) 4.175956614940069)
		(= (dummy_2_value d2_2) 7.210450578952932)
		(= (dummy_2_value d2_3) 6.064420155568046)
		(= (dummy_2_value d2_4) 3.4013818392957704)

        (= (dummy_3_value d3_0) 14.33495946456029)
		(= (dummy_3_value d3_1) 58.19659165604621)
		(= (dummy_3_value d3_2) 25.563900209114525)
		(= (dummy_3_value d3_3) 85.7529792115466)
		(= (dummy_3_value d3_4) 27.220432353233075)

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

