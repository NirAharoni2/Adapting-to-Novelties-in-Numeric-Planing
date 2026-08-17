;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_64)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.590725533828383)

        (= (sled_supplies s0) 0.9658387242554173)

        (= (factor_value f0) 0.9049794428779503)
		(= (factor_value f1) 0.9914324848202168)
		(= (factor_value f2) 0.8418180173175852)
		(= (factor_value f3) 0.8903269913622246)

        (= (dummy_1_value d1_0) 0.7520031165446922)
		(= (dummy_1_value d1_1) 0.8392140354133145)
		(= (dummy_1_value d1_2) 0.9688322778436959)
		(= (dummy_1_value d1_3) 0.9739683859304857)

        (= (dummy_2_value d2_0) 9.10397324993998)
		(= (dummy_2_value d2_1) 7.081493910684202)
		(= (dummy_2_value d2_2) 5.431497421765299)
		(= (dummy_2_value d2_3) 4.756371079947552)
		(= (dummy_2_value d2_4) 4.522927423126661)

        (= (dummy_3_value d3_0) 95.27764347955588)
		(= (dummy_3_value d3_1) 66.959376330275)
		(= (dummy_3_value d3_2) 80.07758427452215)
		(= (dummy_3_value d3_3) 67.00470876699926)

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

