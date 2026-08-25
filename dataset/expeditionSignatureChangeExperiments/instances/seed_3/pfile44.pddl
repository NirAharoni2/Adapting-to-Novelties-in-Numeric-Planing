;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_44)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 12.689871547301532)

        (= (sled_supplies s0) 0.8894171235922238)

        (= (factor_value f0) 0.652677593537745)
		(= (factor_value f1) 0.5745553245188144)
		(= (factor_value f2) 0.7281246290839326)

        (= (dummy_1_value d1_0) 0.6919622354226443)
		(= (dummy_1_value d1_1) 0.8782999872949377)
		(= (dummy_1_value d1_2) 0.6477891278743441)
		(= (dummy_1_value d1_3) 0.8748187081826625)
		(= (dummy_1_value d1_4) 0.8737879104146995)

        (= (dummy_2_value d2_0) 3.7066202660728496)
		(= (dummy_2_value d2_1) 8.728963163199897)
		(= (dummy_2_value d2_2) 9.631278749639277)
		(= (dummy_2_value d2_3) 3.8521130263285617)

        (= (dummy_3_value d3_0) 84.15468972946258)
		(= (dummy_3_value d3_1) 13.908755676845765)
		(= (dummy_3_value d3_2) 60.755090272864955)
		(= (dummy_3_value d3_3) 6.637199390827758)
		(= (dummy_3_value d3_4) 61.82652111646174)

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

