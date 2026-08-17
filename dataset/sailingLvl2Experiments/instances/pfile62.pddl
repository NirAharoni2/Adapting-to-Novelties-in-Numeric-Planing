;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_62)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) 1.0)
		(= (y b0) 10.0)
		(= (x b1) 3.0)
		(= (y b1) -3.0)

		(= (d p0) -80.0)
		(= (d p1) -60.0)

        (= (dummy_1_d d1_0) 122.0)
		(= (dummy_1_d d1_1) 119.0)
		(= (dummy_1_d d1_2) 70.0)
		(= (dummy_1_d d1_3) -43.0)

        (= (dummy_2_d d2_0) -5.0)

        (= (dummy_3_d d3_0) 868.0)
		(= (dummy_3_d d3_1) 540.0)
		(= (dummy_3_d d3_2) -1286.0)
		(= (dummy_3_d d3_3) -234.0)
		(= (dummy_3_d d3_4) -1004.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

