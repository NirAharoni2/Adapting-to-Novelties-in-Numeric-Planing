;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_48)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.8994269214675565)

        (= (sled_supplies s0) 4.386533086232839)

        (= (factor_value f0) 0.5694585959996978)
		(= (factor_value f1) 0.6533342871321617)

        (= (dummy_1_value d1_0) 0.7763643011074925)
		(= (dummy_1_value d1_1) 0.5586653643235184)
		(= (dummy_1_value d1_2) 0.5868344031231445)
		(= (dummy_1_value d1_3) 0.9412730488361333)

        (= (dummy_2_value d2_0) 4.876666294429061)
		(= (dummy_2_value d2_1) 8.163808279942264)
		(= (dummy_2_value d2_2) 4.445284739638563)

        (= (dummy_3_value d3_0) 49.531333166439865)
		(= (dummy_3_value d3_1) 98.57986306534937)
		(= (dummy_3_value d3_2) 47.79375671701895)
		(= (dummy_3_value d3_3) 14.856851499443275)
		(= (dummy_3_value d3_4) 21.161070597616916)

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

