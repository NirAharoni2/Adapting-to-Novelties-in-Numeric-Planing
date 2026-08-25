;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_4)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 12.754257205162395)

        (= (sled_supplies s0) 4.899431387624854)

        (= (factor_value f0) 0.9609411693388066)

        (= (dummy_1_value d1_0) 0.6395367477291092)
		(= (dummy_1_value d1_1) 0.6179757788721805)
		(= (dummy_1_value d1_2) 0.5180064190539346)
		(= (dummy_1_value d1_3) 0.5036163668221634)
		(= (dummy_1_value d1_4) 0.5540596529832587)

        (= (dummy_2_value d2_0) 5.820203522461651)
		(= (dummy_2_value d2_1) 9.540059438172458)
		(= (dummy_2_value d2_2) 9.74285792314578)
		(= (dummy_2_value d2_3) 3.6245115883216568)
		(= (dummy_2_value d2_4) 3.3703588426544577)

        (= (dummy_3_value d3_0) 69.2835742697205)

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

