;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_96)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.269010281881137)

        (= (sled_supplies s0) 2.4576760527160726)

        (= (factor_value f0) 0.7959161833336367)
		(= (factor_value f1) 0.9330070529045535)
		(= (factor_value f2) 0.6846567321731019)
		(= (factor_value f3) 0.5480877211500521)
		(= (factor_value f4) 0.5528561692052424)

        (= (dummy_1_value d1_0) 0.9531661502863917)
		(= (dummy_1_value d1_1) 0.5555450308682283)
		(= (dummy_1_value d1_2) 0.8271007448094927)
		(= (dummy_1_value d1_3) 0.543753631426362)

        (= (dummy_2_value d2_0) 5.6113253152858205)
		(= (dummy_2_value d2_1) 9.20073557409273)
		(= (dummy_2_value d2_2) 3.1102439077432806)
		(= (dummy_2_value d2_3) 3.766356515795981)

        (= (dummy_3_value d3_0) 61.52460302502542)
		(= (dummy_3_value d3_1) 57.77402194941617)
		(= (dummy_3_value d3_2) 56.48773693684398)

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

