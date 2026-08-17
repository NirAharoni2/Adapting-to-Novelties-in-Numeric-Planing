;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_50)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.249426244257942)

        (= (sled_supplies s0) 6.732650029971565)

        (= (factor_value f0) 0.6788585032224537)
		(= (factor_value f1) 0.5793295991286755)
		(= (factor_value f2) 0.8884272167108153)

        (= (dummy_1_value d1_0) 0.9581708338262676)
		(= (dummy_1_value d1_1) 0.6568492778479851)
		(= (dummy_1_value d1_2) 0.9398812678727404)
		(= (dummy_1_value d1_3) 0.6731280470396981)

        (= (dummy_2_value d2_0) 6.917998251557059)
		(= (dummy_2_value d2_1) 9.962106347719315)

        (= (dummy_3_value d3_0) 77.4350027713384)
		(= (dummy_3_value d3_1) 6.511053912924842)
		(= (dummy_3_value d3_2) 44.052394092668536)
		(= (dummy_3_value d3_3) 38.254022564855795)
		(= (dummy_3_value d3_4) 30.099247736012845)

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

