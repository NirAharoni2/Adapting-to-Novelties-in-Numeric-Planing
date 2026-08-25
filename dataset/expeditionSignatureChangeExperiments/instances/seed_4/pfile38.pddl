;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_38)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 14.229494743706848)

        (= (sled_supplies s0) 2.36548821621062)

        (= (factor_value f0) 0.7297538181967382)
		(= (factor_value f1) 0.8431679676095636)
		(= (factor_value f2) 0.7860519338579103)
		(= (factor_value f3) 0.5662191698138521)

        (= (dummy_1_value d1_0) 0.5010206655362404)
		(= (dummy_1_value d1_1) 0.6163143916849938)
		(= (dummy_1_value d1_2) 0.6699740892455472)

        (= (dummy_2_value d2_0) 3.8381531711957892)
		(= (dummy_2_value d2_1) 3.9523590843839163)
		(= (dummy_2_value d2_2) 5.0436198276966735)
		(= (dummy_2_value d2_3) 3.0753102933231005)
		(= (dummy_2_value d2_4) 8.148178089469852)

        (= (dummy_3_value d3_0) 67.13853059916224)
		(= (dummy_3_value d3_1) 4.533442569233711)
		(= (dummy_3_value d3_2) 11.999930541409055)
		(= (dummy_3_value d3_3) 73.91776703436645)
		(= (dummy_3_value d3_4) 25.035982111500427)

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

