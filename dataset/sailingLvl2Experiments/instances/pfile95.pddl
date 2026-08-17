;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_95)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) 2.0)
		(= (y b0) 2.0)
		(= (x b1) -8.0)
		(= (y b1) -6.0)

		(= (d p0) -51.0)
		(= (d p1) -125.0)

        (= (dummy_1_d d1_0) -68.0)
		(= (dummy_1_d d1_1) 24.0)
		(= (dummy_1_d d1_2) -99.0)
		(= (dummy_1_d d1_3) 36.0)
		(= (dummy_1_d d1_4) 114.0)

        (= (dummy_2_d d2_0) 10.0)
		(= (dummy_2_d d2_1) -9.0)
		(= (dummy_2_d d2_2) -9.0)
		(= (dummy_2_d d2_3) 3.0)
		(= (dummy_2_d d2_4) 5.0)

        (= (dummy_3_d d3_0) 585.0)
		(= (dummy_3_d d3_1) -367.0)
		(= (dummy_3_d d3_2) 921.0)
		(= (dummy_3_d d3_3) -172.0)
		(= (dummy_3_d d3_4) 460.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

