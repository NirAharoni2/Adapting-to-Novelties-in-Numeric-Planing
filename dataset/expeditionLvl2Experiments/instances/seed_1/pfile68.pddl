;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_68)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.021541098065471)

        (= (sled_supplies s0) 1.796140603929855)

        (= (factor_value f0) 0.5073337912731057)
		(= (factor_value f1) 0.8786865958789292)
		(= (factor_value f2) 0.8909577334581924)

        (= (dummy_1_value d1_0) 0.7287685457315551)
		(= (dummy_1_value d1_1) 0.6777685963814847)
		(= (dummy_1_value d1_2) 0.7539923766410204)
		(= (dummy_1_value d1_3) 0.6045738112162969)
		(= (dummy_1_value d1_4) 0.7379996662046902)

        (= (dummy_2_value d2_0) 4.020322831470213)
		(= (dummy_2_value d2_1) 9.896489371601293)
		(= (dummy_2_value d2_2) 2.303516324274648)

        (= (dummy_3_value d3_0) 86.37071134372479)
		(= (dummy_3_value d3_1) 6.370772052949262)
		(= (dummy_3_value d3_2) 12.010997334686426)
		(= (dummy_3_value d3_3) 87.28153070585621)
		(= (dummy_3_value d3_4) 91.63578124203437)

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

