;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_45)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.01799691633298)

        (= (sled_supplies s0) 0.7134769731420725)

        (= (factor_value f0) 0.6293258721136673)
		(= (factor_value f1) 0.6493213076109263)
		(= (factor_value f2) 0.5007495428577643)
		(= (factor_value f3) 0.8791058820590221)
		(= (factor_value f4) 0.7578764619588756)

        (= (dummy_1_value d1_0) 0.9509833399133305)
		(= (dummy_1_value d1_1) 0.7327657244386083)
		(= (dummy_1_value d1_2) 0.577710623502697)
		(= (dummy_1_value d1_3) 0.608201648829132)
		(= (dummy_1_value d1_4) 0.6316797633268947)

        (= (dummy_2_value d2_0) 9.520962741266437)

        (= (dummy_3_value d3_0) 21.319432670654354)
		(= (dummy_3_value d3_1) 9.732108718683708)
		(= (dummy_3_value d3_2) 35.92089607856411)

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

