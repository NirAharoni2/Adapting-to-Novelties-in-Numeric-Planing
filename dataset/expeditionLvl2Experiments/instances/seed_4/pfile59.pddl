;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_59)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.516372318273265)

        (= (sled_supplies s0) 4.280501325947503)

        (= (factor_value f0) 0.6090808692592158)
		(= (factor_value f1) 0.9315296351790245)
		(= (factor_value f2) 0.6500597005153911)

        (= (dummy_1_value d1_0) 0.7129590951495552)
		(= (dummy_1_value d1_1) 0.982699994583238)
		(= (dummy_1_value d1_2) 0.6511826407917599)
		(= (dummy_1_value d1_3) 0.9330145414048024)
		(= (dummy_1_value d1_4) 0.5539574184900463)

        (= (dummy_2_value d2_0) 1.8634802799333618)
		(= (dummy_2_value d2_1) 4.554770324583208)
		(= (dummy_2_value d2_2) 7.802334170840468)
		(= (dummy_2_value d2_3) 3.45063233191666)

        (= (dummy_3_value d3_0) 19.37966061606235)
		(= (dummy_3_value d3_1) 73.12494921402693)
		(= (dummy_3_value d3_2) 84.94555472143885)

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

