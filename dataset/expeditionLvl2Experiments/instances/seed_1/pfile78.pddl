;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_78)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.089753539843958)

        (= (sled_supplies s0) 7.174240062754747)

        (= (factor_value f0) 0.6158765179731769)
		(= (factor_value f1) 0.6452672395770638)
		(= (factor_value f2) 0.784227874155439)

        (= (dummy_1_value d1_0) 0.5976674821121408)
		(= (dummy_1_value d1_1) 0.9879120369831254)
		(= (dummy_1_value d1_2) 0.6113796918425215)

        (= (dummy_2_value d2_0) 5.555423550403849)
		(= (dummy_2_value d2_1) 3.3988538925926153)
		(= (dummy_2_value d2_2) 2.4613427225700657)
		(= (dummy_2_value d2_3) 1.6785710066779909)
		(= (dummy_2_value d2_4) 6.160642464431)

        (= (dummy_3_value d3_0) 51.41699723309187)
		(= (dummy_3_value d3_1) 89.071867625462)
		(= (dummy_3_value d3_2) 60.42647133359233)
		(= (dummy_3_value d3_3) 86.47433420755547)

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

