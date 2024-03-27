
(define (problem simple_escape)
    (:domain wumpus_world)
    (:objects
        p0_0 p2_0 p3_0 p4_0 p7_0 p10_0 p11_0 p0_1 p1_1 p2_1 p3_1 p5_1 p6_1 p8_1 p9_1 p10_1 p0_2 p1_2 p4_2 p6_2 p7_2 p8_2 p9_2 p11_2 p0_3 p1_3 p4_3 p6_3 p7_3 p9_3 p10_3 p11_3 p1_4 p2_4 p3_4 p5_4 p6_4 p8_4 p9_4 p10_4 p11_4 p1_5 p4_5 p7_5 p8_5 p9_5 p10_5 p3_6 p4_6 p6_6 p7_6 p8_6 p11_6 p1_7 p2_7 p3_7 p4_7 p6_7 p7_7 p9_7 p10_7 p0_-1 p1_8 p2_-1 p2_8 p3_-1 p3_8 p4_-1 p4_8 p6_8 p7_-1 p7_8 p9_8 p10_-1 p10_8 p11_-1 p-1_0 p12_0 p-1_1 p-1_2 p12_2 p-1_3 p12_3 p12_4 p12_6 - pos
         - crate
        wumpus1 wumpus2 wumpus3 wumpus4 wumpus5 wumpus6 wumpus7 wumpus8 wumpus9 wumpus10 wumpus11 wumpus12 wumpus13 wumpus14 wumpus15 wumpus16 wumpus17 wumpus18 - wumpus
        arrow1 arrow2 - arrow
        firework1 firework2 firework3 firework4 firework5 firework6 firework7 firework8 firework9 firework10 firework11 firework12 firework13 firework14 firework15 firework16 firework17 firework18 firework19 firework20 - firework
         - halfcrate
         - pit

    )
    (:init
        (agent-at p5_1)
        (firework-count-0);
        
        (path p0_0 p0_1) (path p0_1 p0_0) (path p2_0 p3_0) (path p3_0 p2_0) (path p2_0 p2_1) (path p2_1 p2_0) (path p3_0 p4_0) (path p4_0 p3_0) (path p3_0 p3_1) (path p3_1 p3_0) (path p10_0 p11_0) (path p11_0 p10_0) (path p10_0 p10_1) (path p10_1 p10_0) (path p0_1 p1_1) (path p1_1 p0_1) (path p0_1 p0_2) (path p0_2 p0_1) (path p1_1 p2_1) (path p2_1 p1_1) (path p1_1 p1_2) (path p1_2 p1_1) (path p2_1 p3_1) (path p3_1 p2_1) (path p5_1 p6_1) (path p6_1 p5_1) (path p6_1 p6_2) (path p6_2 p6_1) (path p8_1 p9_1) (path p9_1 p8_1) (path p8_1 p8_2) (path p8_2 p8_1) (path p9_1 p10_1) (path p10_1 p9_1) (path p9_1 p9_2) (path p9_2 p9_1) (path p0_2 p1_2) (path p1_2 p0_2) (path p0_2 p0_3) (path p0_3 p0_2) (path p1_2 p1_3) (path p1_3 p1_2) (path p4_2 p4_3) (path p4_3 p4_2) (path p6_2 p7_2) (path p7_2 p6_2) (path p6_2 p6_3) (path p6_3 p6_2) (path p7_2 p8_2) (path p8_2 p7_2) (path p7_2 p7_3) (path p7_3 p7_2) (path p8_2 p9_2) (path p9_2 p8_2) (path p9_2 p9_3) (path p9_3 p9_2) (path p11_2 p11_3) (path p11_3 p11_2) (path p0_3 p1_3) (path p1_3 p0_3) (path p1_3 p1_4) (path p1_4 p1_3) (path p6_3 p7_3) (path p7_3 p6_3) (path p6_3 p6_4) (path p6_4 p6_3) (path p9_3 p10_3) (path p10_3 p9_3) (path p9_3 p9_4) (path p9_4 p9_3) (path p10_3 p11_3) (path p11_3 p10_3) (path p10_3 p10_4) (path p10_4 p10_3) (path p11_3 p11_4) (path p11_4 p11_3) (path p1_4 p2_4) (path p2_4 p1_4) (path p1_4 p1_5) (path p1_5 p1_4) (path p2_4 p3_4) (path p3_4 p2_4) (path p5_4 p6_4) (path p6_4 p5_4) (path p8_4 p9_4) (path p9_4 p8_4) (path p8_4 p8_5) (path p8_5 p8_4) (path p9_4 p10_4) (path p10_4 p9_4) (path p9_4 p9_5) (path p9_5 p9_4) (path p10_4 p11_4) (path p11_4 p10_4) (path p10_4 p10_5) (path p10_5 p10_4) (path p4_5 p4_6) (path p4_6 p4_5) (path p7_5 p8_5) (path p8_5 p7_5) (path p7_5 p7_6) (path p7_6 p7_5) (path p8_5 p9_5) (path p9_5 p8_5) (path p8_5 p8_6) (path p8_6 p8_5) (path p9_5 p10_5) (path p10_5 p9_5) (path p3_6 p4_6) (path p4_6 p3_6) (path p3_6 p3_7) (path p3_7 p3_6) (path p4_6 p4_7) (path p4_7 p4_6) (path p6_6 p7_6) (path p7_6 p6_6) (path p6_6 p6_7) (path p6_7 p6_6) (path p7_6 p8_6) (path p8_6 p7_6) (path p7_6 p7_7) (path p7_7 p7_6) (path p1_7 p2_7) (path p2_7 p1_7) (path p2_7 p3_7) (path p3_7 p2_7) (path p3_7 p4_7) (path p4_7 p3_7) (path p6_7 p7_7) (path p7_7 p6_7) (path p9_7 p10_7) (path p10_7 p9_7) (path p0_0 p0_-1) (path p1_7 p1_8) (path p2_0 p2_-1) (path p2_7 p2_8) (path p3_0 p3_-1) (path p3_7 p3_8) (path p4_0 p4_-1) (path p4_7 p4_8) (path p6_7 p6_8) (path p7_0 p7_-1) (path p7_7 p7_8) (path p9_7 p9_8) (path p10_0 p10_-1) (path p10_7 p10_8) (path p11_0 p11_-1) (path p0_0 p-1_0) (path p11_0 p12_0) (path p0_1 p-1_1) (path p0_2 p-1_2) (path p11_2 p12_2) (path p0_3 p-1_3) (path p11_3 p12_3) (path p11_4 p12_4) (path p11_6 p12_6)
        
        (wumpus-at wumpus1 p3_0) (wumpus-at wumpus2 p7_0) (wumpus-at wumpus3 p10_0) (wumpus-at wumpus4 p11_0) (wumpus-at wumpus5 p2_1) (wumpus-at wumpus6 p8_1) (wumpus-at wumpus7 p9_1) (wumpus-at wumpus8 p9_2) (wumpus-at wumpus9 p9_3) (wumpus-at wumpus10 p11_3) (wumpus-at wumpus11 p2_4) (wumpus-at wumpus12 p8_4) (wumpus-at wumpus13 p10_4) (wumpus-at wumpus14 p3_6) (wumpus-at wumpus15 p4_6) (wumpus-at wumpus16 p3_7) (wumpus-at wumpus17 p6_7) (wumpus-at wumpus18 p9_7)
        (arrow-at arrow1 p8_2) (arrow-at arrow2 p11_6)
        (firework-at firework1 p0_0) (firework-at firework2 p2_0) (firework-at firework3 p10_1) (firework-at firework4 p4_2) (firework-at firework5 p0_3) (firework-at firework6 p4_3) (firework-at firework7 p1_4) (firework-at firework8 p3_4) (firework-at firework9 p5_4) (firework-at firework10 p6_4) (firework-at firework11 p4_5) (firework-at firework12 p7_5) (firework-at firework13 p9_5) (firework-at firework14 p10_5) (firework-at firework15 p6_6) (firework-at firework16 p7_6) (firework-at firework17 p8_6) (firework-at firework18 p1_7) (firework-at firework19 p4_7) (firework-at firework20 p7_7)
        (empty p4_0) (empty p0_1) (empty p1_1) (empty p3_1) (empty p6_1) (empty p0_2) (empty p1_2) (empty p6_2) (empty p7_2) (empty p11_2) (empty p1_3) (empty p6_3) (empty p7_3) (empty p10_3) (empty p9_4) (empty p11_4) (empty p1_5) (empty p8_5) (empty p2_7) (empty p10_7)
        (empty p0_-1) (empty p1_8) (empty p2_-1) (empty p2_8) (empty p3_-1) (empty p3_8) (empty p4_-1) (empty p4_8) (empty p6_8) (empty p7_-1) (empty p7_8) (empty p9_8) (empty p10_-1) (empty p10_8) (empty p11_-1) (empty p-1_0) (empty p12_0) (empty p-1_1) (empty p-1_2) (empty p12_2) (empty p-1_3) (empty p12_3) (empty p12_4) (empty p12_6)
        (outside p0_-1) (outside p1_8) (outside p2_-1) (outside p2_8) (outside p3_-1) (outside p3_8) (outside p4_-1) (outside p4_8) (outside p6_8) (outside p7_-1) (outside p7_8) (outside p9_8) (outside p10_-1) (outside p10_8) (outside p11_-1) (outside p-1_0) (outside p12_0) (outside p-1_1) (outside p-1_2) (outside p12_2) (outside p-1_3) (outside p12_3) (outside p12_4) (outside p12_6)
        (walkable p4_0) (walkable p0_1) (walkable p1_1) (walkable p3_1) (walkable p6_1) (walkable p0_2) (walkable p1_2) (walkable p6_2) (walkable p7_2) (walkable p11_2) (walkable p1_3) (walkable p6_3) (walkable p7_3) (walkable p10_3) (walkable p9_4) (walkable p11_4) (walkable p1_5) (walkable p8_5) (walkable p2_7) (walkable p10_7)
        (walkable p0_-1) (walkable p1_8) (walkable p2_-1) (walkable p2_8) (walkable p3_-1) (walkable p3_8) (walkable p4_-1) (walkable p4_8) (walkable p6_8) (walkable p7_-1) (walkable p7_8) (walkable p9_8) (walkable p10_-1) (walkable p10_8) (walkable p11_-1) (walkable p-1_0) (walkable p12_0) (walkable p-1_1) (walkable p-1_2) (walkable p12_2) (walkable p-1_3) (walkable p12_3) (walkable p12_4) (walkable p12_6)
        (walkable p8_2) (walkable p11_6)
        (walkable p0_0) (walkable p2_0) (walkable p10_1) (walkable p4_2) (walkable p0_3) (walkable p4_3) (walkable p1_4) (walkable p3_4) (walkable p5_4) (walkable p6_4) (walkable p4_5) (walkable p7_5) (walkable p9_5) (walkable p10_5) (walkable p6_6) (walkable p7_6) (walkable p8_6) (walkable p1_7) (walkable p4_7) (walkable p7_7)
        
        
        (is_same_line p0_0 p2_0) (is_same_line p0_0 p3_0) (is_same_line p0_0 p4_0) (is_same_line p0_0 p7_0) (is_same_line p0_0 p10_0) (is_same_line p0_0 p11_0) (is_same_line p0_0 p0_1) (is_same_line p0_0 p0_2) (is_same_line p0_0 p0_3) (is_same_line p0_0 p0_-1) (is_same_line p0_0 p-1_0) (is_same_line p0_0 p12_0) (is_same_line p2_0 p0_0) (is_same_line p2_0 p3_0) (is_same_line p2_0 p4_0) (is_same_line p2_0 p7_0) (is_same_line p2_0 p10_0) (is_same_line p2_0 p11_0) (is_same_line p2_0 p2_1) (is_same_line p2_0 p2_4) (is_same_line p2_0 p2_7) (is_same_line p2_0 p2_-1) (is_same_line p2_0 p2_8) (is_same_line p2_0 p-1_0) (is_same_line p2_0 p12_0) (is_same_line p3_0 p0_0) (is_same_line p3_0 p2_0) (is_same_line p3_0 p4_0) (is_same_line p3_0 p7_0) (is_same_line p3_0 p10_0) (is_same_line p3_0 p11_0) (is_same_line p3_0 p3_1) (is_same_line p3_0 p3_4) (is_same_line p3_0 p3_6) (is_same_line p3_0 p3_7) (is_same_line p3_0 p3_-1) (is_same_line p3_0 p3_8) (is_same_line p3_0 p-1_0) (is_same_line p3_0 p12_0) (is_same_line p4_0 p0_0) (is_same_line p4_0 p2_0) (is_same_line p4_0 p3_0) (is_same_line p4_0 p7_0) (is_same_line p4_0 p10_0) (is_same_line p4_0 p11_0) (is_same_line p4_0 p4_2) (is_same_line p4_0 p4_3) (is_same_line p4_0 p4_5) (is_same_line p4_0 p4_6) (is_same_line p4_0 p4_7) (is_same_line p4_0 p4_-1) (is_same_line p4_0 p4_8) (is_same_line p4_0 p-1_0) (is_same_line p4_0 p12_0) (is_same_line p7_0 p0_0) (is_same_line p7_0 p2_0) (is_same_line p7_0 p3_0) (is_same_line p7_0 p4_0) (is_same_line p7_0 p10_0) (is_same_line p7_0 p11_0) (is_same_line p7_0 p7_2) (is_same_line p7_0 p7_3) (is_same_line p7_0 p7_5) (is_same_line p7_0 p7_6) (is_same_line p7_0 p7_7) (is_same_line p7_0 p7_-1) (is_same_line p7_0 p7_8) (is_same_line p7_0 p-1_0) (is_same_line p7_0 p12_0) (is_same_line p10_0 p0_0) (is_same_line p10_0 p2_0) (is_same_line p10_0 p3_0) (is_same_line p10_0 p4_0) (is_same_line p10_0 p7_0) (is_same_line p10_0 p11_0) (is_same_line p10_0 p10_1) (is_same_line p10_0 p10_3) (is_same_line p10_0 p10_4) (is_same_line p10_0 p10_5) (is_same_line p10_0 p10_7) (is_same_line p10_0 p10_-1) (is_same_line p10_0 p10_8) (is_same_line p10_0 p-1_0) (is_same_line p10_0 p12_0) (is_same_line p11_0 p0_0) (is_same_line p11_0 p2_0) (is_same_line p11_0 p3_0) (is_same_line p11_0 p4_0) (is_same_line p11_0 p7_0) (is_same_line p11_0 p10_0) (is_same_line p11_0 p11_2) (is_same_line p11_0 p11_3) (is_same_line p11_0 p11_4) (is_same_line p11_0 p11_6) (is_same_line p11_0 p11_-1) (is_same_line p11_0 p-1_0) (is_same_line p11_0 p12_0) (is_same_line p0_1 p0_0) (is_same_line p0_1 p1_1) (is_same_line p0_1 p2_1) (is_same_line p0_1 p3_1) (is_same_line p0_1 p5_1) (is_same_line p0_1 p6_1) (is_same_line p0_1 p8_1) (is_same_line p0_1 p9_1) (is_same_line p0_1 p10_1) (is_same_line p0_1 p0_2) (is_same_line p0_1 p0_3) (is_same_line p0_1 p0_-1) (is_same_line p0_1 p-1_1) (is_same_line p1_1 p0_1) (is_same_line p1_1 p2_1) (is_same_line p1_1 p3_1) (is_same_line p1_1 p5_1) (is_same_line p1_1 p6_1) (is_same_line p1_1 p8_1) (is_same_line p1_1 p9_1) (is_same_line p1_1 p10_1) (is_same_line p1_1 p1_2) (is_same_line p1_1 p1_3) (is_same_line p1_1 p1_4) (is_same_line p1_1 p1_5) (is_same_line p1_1 p1_7) (is_same_line p1_1 p1_8) (is_same_line p1_1 p-1_1) (is_same_line p2_1 p2_0) (is_same_line p2_1 p0_1) (is_same_line p2_1 p1_1) (is_same_line p2_1 p3_1) (is_same_line p2_1 p5_1) (is_same_line p2_1 p6_1) (is_same_line p2_1 p8_1) (is_same_line p2_1 p9_1) (is_same_line p2_1 p10_1) (is_same_line p2_1 p2_4) (is_same_line p2_1 p2_7) (is_same_line p2_1 p2_-1) (is_same_line p2_1 p2_8) (is_same_line p2_1 p-1_1) (is_same_line p3_1 p3_0) (is_same_line p3_1 p0_1) (is_same_line p3_1 p1_1) (is_same_line p3_1 p2_1) (is_same_line p3_1 p5_1) (is_same_line p3_1 p6_1) (is_same_line p3_1 p8_1) (is_same_line p3_1 p9_1) (is_same_line p3_1 p10_1) (is_same_line p3_1 p3_4) (is_same_line p3_1 p3_6) (is_same_line p3_1 p3_7) (is_same_line p3_1 p3_-1) (is_same_line p3_1 p3_8) (is_same_line p3_1 p-1_1) (is_same_line p5_1 p0_1) (is_same_line p5_1 p1_1) (is_same_line p5_1 p2_1) (is_same_line p5_1 p3_1) (is_same_line p5_1 p6_1) (is_same_line p5_1 p8_1) (is_same_line p5_1 p9_1) (is_same_line p5_1 p10_1) (is_same_line p5_1 p5_4) (is_same_line p5_1 p-1_1) (is_same_line p6_1 p0_1) (is_same_line p6_1 p1_1) (is_same_line p6_1 p2_1) (is_same_line p6_1 p3_1) (is_same_line p6_1 p5_1) (is_same_line p6_1 p8_1) (is_same_line p6_1 p9_1) (is_same_line p6_1 p10_1) (is_same_line p6_1 p6_2) (is_same_line p6_1 p6_3) (is_same_line p6_1 p6_4) (is_same_line p6_1 p6_6) (is_same_line p6_1 p6_7) (is_same_line p6_1 p6_8) (is_same_line p6_1 p-1_1) (is_same_line p8_1 p0_1) (is_same_line p8_1 p1_1) (is_same_line p8_1 p2_1) (is_same_line p8_1 p3_1) (is_same_line p8_1 p5_1) (is_same_line p8_1 p6_1) (is_same_line p8_1 p9_1) (is_same_line p8_1 p10_1) (is_same_line p8_1 p8_2) (is_same_line p8_1 p8_4) (is_same_line p8_1 p8_5) (is_same_line p8_1 p8_6) (is_same_line p8_1 p-1_1) (is_same_line p9_1 p0_1) (is_same_line p9_1 p1_1) (is_same_line p9_1 p2_1) (is_same_line p9_1 p3_1) (is_same_line p9_1 p5_1) (is_same_line p9_1 p6_1) (is_same_line p9_1 p8_1) (is_same_line p9_1 p10_1) (is_same_line p9_1 p9_2) (is_same_line p9_1 p9_3) (is_same_line p9_1 p9_4) (is_same_line p9_1 p9_5) (is_same_line p9_1 p9_7) (is_same_line p9_1 p9_8) (is_same_line p9_1 p-1_1) (is_same_line p10_1 p10_0) (is_same_line p10_1 p0_1) (is_same_line p10_1 p1_1) (is_same_line p10_1 p2_1) (is_same_line p10_1 p3_1) (is_same_line p10_1 p5_1) (is_same_line p10_1 p6_1) (is_same_line p10_1 p8_1) (is_same_line p10_1 p9_1) (is_same_line p10_1 p10_3) (is_same_line p10_1 p10_4) (is_same_line p10_1 p10_5) (is_same_line p10_1 p10_7) (is_same_line p10_1 p10_-1) (is_same_line p10_1 p10_8) (is_same_line p10_1 p-1_1) (is_same_line p0_2 p0_0) (is_same_line p0_2 p0_1) (is_same_line p0_2 p1_2) (is_same_line p0_2 p4_2) (is_same_line p0_2 p6_2) (is_same_line p0_2 p7_2) (is_same_line p0_2 p8_2) (is_same_line p0_2 p9_2) (is_same_line p0_2 p11_2) (is_same_line p0_2 p0_3) (is_same_line p0_2 p0_-1) (is_same_line p0_2 p-1_2) (is_same_line p0_2 p12_2) (is_same_line p1_2 p1_1) (is_same_line p1_2 p0_2) (is_same_line p1_2 p4_2) (is_same_line p1_2 p6_2) (is_same_line p1_2 p7_2) (is_same_line p1_2 p8_2) (is_same_line p1_2 p9_2) (is_same_line p1_2 p11_2) (is_same_line p1_2 p1_3) (is_same_line p1_2 p1_4) (is_same_line p1_2 p1_5) (is_same_line p1_2 p1_7) (is_same_line p1_2 p1_8) (is_same_line p1_2 p-1_2) (is_same_line p1_2 p12_2) (is_same_line p4_2 p4_0) (is_same_line p4_2 p0_2) (is_same_line p4_2 p1_2) (is_same_line p4_2 p6_2) (is_same_line p4_2 p7_2) (is_same_line p4_2 p8_2) (is_same_line p4_2 p9_2) (is_same_line p4_2 p11_2) (is_same_line p4_2 p4_3) (is_same_line p4_2 p4_5) (is_same_line p4_2 p4_6) (is_same_line p4_2 p4_7) (is_same_line p4_2 p4_-1) (is_same_line p4_2 p4_8) (is_same_line p4_2 p-1_2) (is_same_line p4_2 p12_2) (is_same_line p6_2 p6_1) (is_same_line p6_2 p0_2) (is_same_line p6_2 p1_2) (is_same_line p6_2 p4_2) (is_same_line p6_2 p7_2) (is_same_line p6_2 p8_2) (is_same_line p6_2 p9_2) (is_same_line p6_2 p11_2) (is_same_line p6_2 p6_3) (is_same_line p6_2 p6_4) (is_same_line p6_2 p6_6) (is_same_line p6_2 p6_7) (is_same_line p6_2 p6_8) (is_same_line p6_2 p-1_2) (is_same_line p6_2 p12_2) (is_same_line p7_2 p7_0) (is_same_line p7_2 p0_2) (is_same_line p7_2 p1_2) (is_same_line p7_2 p4_2) (is_same_line p7_2 p6_2) (is_same_line p7_2 p8_2) (is_same_line p7_2 p9_2) (is_same_line p7_2 p11_2) (is_same_line p7_2 p7_3) (is_same_line p7_2 p7_5) (is_same_line p7_2 p7_6) (is_same_line p7_2 p7_7) (is_same_line p7_2 p7_-1) (is_same_line p7_2 p7_8) (is_same_line p7_2 p-1_2) (is_same_line p7_2 p12_2) (is_same_line p8_2 p8_1) (is_same_line p8_2 p0_2) (is_same_line p8_2 p1_2) (is_same_line p8_2 p4_2) (is_same_line p8_2 p6_2) (is_same_line p8_2 p7_2) (is_same_line p8_2 p9_2) (is_same_line p8_2 p11_2) (is_same_line p8_2 p8_4) (is_same_line p8_2 p8_5) (is_same_line p8_2 p8_6) (is_same_line p8_2 p-1_2) (is_same_line p8_2 p12_2) (is_same_line p9_2 p9_1) (is_same_line p9_2 p0_2) (is_same_line p9_2 p1_2) (is_same_line p9_2 p4_2) (is_same_line p9_2 p6_2) (is_same_line p9_2 p7_2) (is_same_line p9_2 p8_2) (is_same_line p9_2 p11_2) (is_same_line p9_2 p9_3) (is_same_line p9_2 p9_4) (is_same_line p9_2 p9_5) (is_same_line p9_2 p9_7) (is_same_line p9_2 p9_8) (is_same_line p9_2 p-1_2) (is_same_line p9_2 p12_2) (is_same_line p11_2 p11_0) (is_same_line p11_2 p0_2) (is_same_line p11_2 p1_2) (is_same_line p11_2 p4_2) (is_same_line p11_2 p6_2) (is_same_line p11_2 p7_2) (is_same_line p11_2 p8_2) (is_same_line p11_2 p9_2) (is_same_line p11_2 p11_3) (is_same_line p11_2 p11_4) (is_same_line p11_2 p11_6) (is_same_line p11_2 p11_-1) (is_same_line p11_2 p-1_2) (is_same_line p11_2 p12_2) (is_same_line p0_3 p0_0) (is_same_line p0_3 p0_1) (is_same_line p0_3 p0_2) (is_same_line p0_3 p1_3) (is_same_line p0_3 p4_3) (is_same_line p0_3 p6_3) (is_same_line p0_3 p7_3) (is_same_line p0_3 p9_3) (is_same_line p0_3 p10_3) (is_same_line p0_3 p11_3) (is_same_line p0_3 p0_-1) (is_same_line p0_3 p-1_3) (is_same_line p0_3 p12_3) (is_same_line p1_3 p1_1) (is_same_line p1_3 p1_2) (is_same_line p1_3 p0_3) (is_same_line p1_3 p4_3) (is_same_line p1_3 p6_3) (is_same_line p1_3 p7_3) (is_same_line p1_3 p9_3) (is_same_line p1_3 p10_3) (is_same_line p1_3 p11_3) (is_same_line p1_3 p1_4) (is_same_line p1_3 p1_5) (is_same_line p1_3 p1_7) (is_same_line p1_3 p1_8) (is_same_line p1_3 p-1_3) (is_same_line p1_3 p12_3) (is_same_line p4_3 p4_0) (is_same_line p4_3 p4_2) (is_same_line p4_3 p0_3) (is_same_line p4_3 p1_3) (is_same_line p4_3 p6_3) (is_same_line p4_3 p7_3) (is_same_line p4_3 p9_3) (is_same_line p4_3 p10_3) (is_same_line p4_3 p11_3) (is_same_line p4_3 p4_5) (is_same_line p4_3 p4_6) (is_same_line p4_3 p4_7) (is_same_line p4_3 p4_-1) (is_same_line p4_3 p4_8) (is_same_line p4_3 p-1_3) (is_same_line p4_3 p12_3) (is_same_line p6_3 p6_1) (is_same_line p6_3 p6_2) (is_same_line p6_3 p0_3) (is_same_line p6_3 p1_3) (is_same_line p6_3 p4_3) (is_same_line p6_3 p7_3) (is_same_line p6_3 p9_3) (is_same_line p6_3 p10_3) (is_same_line p6_3 p11_3) (is_same_line p6_3 p6_4) (is_same_line p6_3 p6_6) (is_same_line p6_3 p6_7) (is_same_line p6_3 p6_8) (is_same_line p6_3 p-1_3) (is_same_line p6_3 p12_3) (is_same_line p7_3 p7_0) (is_same_line p7_3 p7_2) (is_same_line p7_3 p0_3) (is_same_line p7_3 p1_3) (is_same_line p7_3 p4_3) (is_same_line p7_3 p6_3) (is_same_line p7_3 p9_3) (is_same_line p7_3 p10_3) (is_same_line p7_3 p11_3) (is_same_line p7_3 p7_5) (is_same_line p7_3 p7_6) (is_same_line p7_3 p7_7) (is_same_line p7_3 p7_-1) (is_same_line p7_3 p7_8) (is_same_line p7_3 p-1_3) (is_same_line p7_3 p12_3) (is_same_line p9_3 p9_1) (is_same_line p9_3 p9_2) (is_same_line p9_3 p0_3) (is_same_line p9_3 p1_3) (is_same_line p9_3 p4_3) (is_same_line p9_3 p6_3) (is_same_line p9_3 p7_3) (is_same_line p9_3 p10_3) (is_same_line p9_3 p11_3) (is_same_line p9_3 p9_4) (is_same_line p9_3 p9_5) (is_same_line p9_3 p9_7) (is_same_line p9_3 p9_8) (is_same_line p9_3 p-1_3) (is_same_line p9_3 p12_3) (is_same_line p10_3 p10_0) (is_same_line p10_3 p10_1) (is_same_line p10_3 p0_3) (is_same_line p10_3 p1_3) (is_same_line p10_3 p4_3) (is_same_line p10_3 p6_3) (is_same_line p10_3 p7_3) (is_same_line p10_3 p9_3) (is_same_line p10_3 p11_3) (is_same_line p10_3 p10_4) (is_same_line p10_3 p10_5) (is_same_line p10_3 p10_7) (is_same_line p10_3 p10_-1) (is_same_line p10_3 p10_8) (is_same_line p10_3 p-1_3) (is_same_line p10_3 p12_3) (is_same_line p11_3 p11_0) (is_same_line p11_3 p11_2) (is_same_line p11_3 p0_3) (is_same_line p11_3 p1_3) (is_same_line p11_3 p4_3) (is_same_line p11_3 p6_3) (is_same_line p11_3 p7_3) (is_same_line p11_3 p9_3) (is_same_line p11_3 p10_3) (is_same_line p11_3 p11_4) (is_same_line p11_3 p11_6) (is_same_line p11_3 p11_-1) (is_same_line p11_3 p-1_3) (is_same_line p11_3 p12_3) (is_same_line p1_4 p1_1) (is_same_line p1_4 p1_2) (is_same_line p1_4 p1_3) (is_same_line p1_4 p2_4) (is_same_line p1_4 p3_4) (is_same_line p1_4 p5_4) (is_same_line p1_4 p6_4) (is_same_line p1_4 p8_4) (is_same_line p1_4 p9_4) (is_same_line p1_4 p10_4) (is_same_line p1_4 p11_4) (is_same_line p1_4 p1_5) (is_same_line p1_4 p1_7) (is_same_line p1_4 p1_8) (is_same_line p1_4 p12_4) (is_same_line p2_4 p2_0) (is_same_line p2_4 p2_1) (is_same_line p2_4 p1_4) (is_same_line p2_4 p3_4) (is_same_line p2_4 p5_4) (is_same_line p2_4 p6_4) (is_same_line p2_4 p8_4) (is_same_line p2_4 p9_4) (is_same_line p2_4 p10_4) (is_same_line p2_4 p11_4) (is_same_line p2_4 p2_7) (is_same_line p2_4 p2_-1) (is_same_line p2_4 p2_8) (is_same_line p2_4 p12_4) (is_same_line p3_4 p3_0) (is_same_line p3_4 p3_1) (is_same_line p3_4 p1_4) (is_same_line p3_4 p2_4) (is_same_line p3_4 p5_4) (is_same_line p3_4 p6_4) (is_same_line p3_4 p8_4) (is_same_line p3_4 p9_4) (is_same_line p3_4 p10_4) (is_same_line p3_4 p11_4) (is_same_line p3_4 p3_6) (is_same_line p3_4 p3_7) (is_same_line p3_4 p3_-1) (is_same_line p3_4 p3_8) (is_same_line p3_4 p12_4) (is_same_line p5_4 p5_1) (is_same_line p5_4 p1_4) (is_same_line p5_4 p2_4) (is_same_line p5_4 p3_4) (is_same_line p5_4 p6_4) (is_same_line p5_4 p8_4) (is_same_line p5_4 p9_4) (is_same_line p5_4 p10_4) (is_same_line p5_4 p11_4) (is_same_line p5_4 p12_4) (is_same_line p6_4 p6_1) (is_same_line p6_4 p6_2) (is_same_line p6_4 p6_3) (is_same_line p6_4 p1_4) (is_same_line p6_4 p2_4) (is_same_line p6_4 p3_4) (is_same_line p6_4 p5_4) (is_same_line p6_4 p8_4) (is_same_line p6_4 p9_4) (is_same_line p6_4 p10_4) (is_same_line p6_4 p11_4) (is_same_line p6_4 p6_6) (is_same_line p6_4 p6_7) (is_same_line p6_4 p6_8) (is_same_line p6_4 p12_4) (is_same_line p8_4 p8_1) (is_same_line p8_4 p8_2) (is_same_line p8_4 p1_4) (is_same_line p8_4 p2_4) (is_same_line p8_4 p3_4) (is_same_line p8_4 p5_4) (is_same_line p8_4 p6_4) (is_same_line p8_4 p9_4) (is_same_line p8_4 p10_4) (is_same_line p8_4 p11_4) (is_same_line p8_4 p8_5) (is_same_line p8_4 p8_6) (is_same_line p8_4 p12_4) (is_same_line p9_4 p9_1) (is_same_line p9_4 p9_2) (is_same_line p9_4 p9_3) (is_same_line p9_4 p1_4) (is_same_line p9_4 p2_4) (is_same_line p9_4 p3_4) (is_same_line p9_4 p5_4) (is_same_line p9_4 p6_4) (is_same_line p9_4 p8_4) (is_same_line p9_4 p10_4) (is_same_line p9_4 p11_4) (is_same_line p9_4 p9_5) (is_same_line p9_4 p9_7) (is_same_line p9_4 p9_8) (is_same_line p9_4 p12_4) (is_same_line p10_4 p10_0) (is_same_line p10_4 p10_1) (is_same_line p10_4 p10_3) (is_same_line p10_4 p1_4) (is_same_line p10_4 p2_4) (is_same_line p10_4 p3_4) (is_same_line p10_4 p5_4) (is_same_line p10_4 p6_4) (is_same_line p10_4 p8_4) (is_same_line p10_4 p9_4) (is_same_line p10_4 p11_4) (is_same_line p10_4 p10_5) (is_same_line p10_4 p10_7) (is_same_line p10_4 p10_-1) (is_same_line p10_4 p10_8) (is_same_line p10_4 p12_4) (is_same_line p11_4 p11_0) (is_same_line p11_4 p11_2) (is_same_line p11_4 p11_3) (is_same_line p11_4 p1_4) (is_same_line p11_4 p2_4) (is_same_line p11_4 p3_4) (is_same_line p11_4 p5_4) (is_same_line p11_4 p6_4) (is_same_line p11_4 p8_4) (is_same_line p11_4 p9_4) (is_same_line p11_4 p10_4) (is_same_line p11_4 p11_6) (is_same_line p11_4 p11_-1) (is_same_line p11_4 p12_4) (is_same_line p1_5 p1_1) (is_same_line p1_5 p1_2) (is_same_line p1_5 p1_3) (is_same_line p1_5 p1_4) (is_same_line p1_5 p4_5) (is_same_line p1_5 p7_5) (is_same_line p1_5 p8_5) (is_same_line p1_5 p9_5) (is_same_line p1_5 p10_5) (is_same_line p1_5 p1_7) (is_same_line p1_5 p1_8) (is_same_line p4_5 p4_0) (is_same_line p4_5 p4_2) (is_same_line p4_5 p4_3) (is_same_line p4_5 p1_5) (is_same_line p4_5 p7_5) (is_same_line p4_5 p8_5) (is_same_line p4_5 p9_5) (is_same_line p4_5 p10_5) (is_same_line p4_5 p4_6) (is_same_line p4_5 p4_7) (is_same_line p4_5 p4_-1) (is_same_line p4_5 p4_8) (is_same_line p7_5 p7_0) (is_same_line p7_5 p7_2) (is_same_line p7_5 p7_3) (is_same_line p7_5 p1_5) (is_same_line p7_5 p4_5) (is_same_line p7_5 p8_5) (is_same_line p7_5 p9_5) (is_same_line p7_5 p10_5) (is_same_line p7_5 p7_6) (is_same_line p7_5 p7_7) (is_same_line p7_5 p7_-1) (is_same_line p7_5 p7_8) (is_same_line p8_5 p8_1) (is_same_line p8_5 p8_2) (is_same_line p8_5 p8_4) (is_same_line p8_5 p1_5) (is_same_line p8_5 p4_5) (is_same_line p8_5 p7_5) (is_same_line p8_5 p9_5) (is_same_line p8_5 p10_5) (is_same_line p8_5 p8_6) (is_same_line p9_5 p9_1) (is_same_line p9_5 p9_2) (is_same_line p9_5 p9_3) (is_same_line p9_5 p9_4) (is_same_line p9_5 p1_5) (is_same_line p9_5 p4_5) (is_same_line p9_5 p7_5) (is_same_line p9_5 p8_5) (is_same_line p9_5 p10_5) (is_same_line p9_5 p9_7) (is_same_line p9_5 p9_8) (is_same_line p10_5 p10_0) (is_same_line p10_5 p10_1) (is_same_line p10_5 p10_3) (is_same_line p10_5 p10_4) (is_same_line p10_5 p1_5) (is_same_line p10_5 p4_5) (is_same_line p10_5 p7_5) (is_same_line p10_5 p8_5) (is_same_line p10_5 p9_5) (is_same_line p10_5 p10_7) (is_same_line p10_5 p10_-1) (is_same_line p10_5 p10_8) (is_same_line p3_6 p3_0) (is_same_line p3_6 p3_1) (is_same_line p3_6 p3_4) (is_same_line p3_6 p4_6) (is_same_line p3_6 p6_6) (is_same_line p3_6 p7_6) (is_same_line p3_6 p8_6) (is_same_line p3_6 p11_6) (is_same_line p3_6 p3_7) (is_same_line p3_6 p3_-1) (is_same_line p3_6 p3_8) (is_same_line p3_6 p12_6) (is_same_line p4_6 p4_0) (is_same_line p4_6 p4_2) (is_same_line p4_6 p4_3) (is_same_line p4_6 p4_5) (is_same_line p4_6 p3_6) (is_same_line p4_6 p6_6) (is_same_line p4_6 p7_6) (is_same_line p4_6 p8_6) (is_same_line p4_6 p11_6) (is_same_line p4_6 p4_7) (is_same_line p4_6 p4_-1) (is_same_line p4_6 p4_8) (is_same_line p4_6 p12_6) (is_same_line p6_6 p6_1) (is_same_line p6_6 p6_2) (is_same_line p6_6 p6_3) (is_same_line p6_6 p6_4) (is_same_line p6_6 p3_6) (is_same_line p6_6 p4_6) (is_same_line p6_6 p7_6) (is_same_line p6_6 p8_6) (is_same_line p6_6 p11_6) (is_same_line p6_6 p6_7) (is_same_line p6_6 p6_8) (is_same_line p6_6 p12_6) (is_same_line p7_6 p7_0) (is_same_line p7_6 p7_2) (is_same_line p7_6 p7_3) (is_same_line p7_6 p7_5) (is_same_line p7_6 p3_6) (is_same_line p7_6 p4_6) (is_same_line p7_6 p6_6) (is_same_line p7_6 p8_6) (is_same_line p7_6 p11_6) (is_same_line p7_6 p7_7) (is_same_line p7_6 p7_-1) (is_same_line p7_6 p7_8) (is_same_line p7_6 p12_6) (is_same_line p8_6 p8_1) (is_same_line p8_6 p8_2) (is_same_line p8_6 p8_4) (is_same_line p8_6 p8_5) (is_same_line p8_6 p3_6) (is_same_line p8_6 p4_6) (is_same_line p8_6 p6_6) (is_same_line p8_6 p7_6) (is_same_line p8_6 p11_6) (is_same_line p8_6 p12_6) (is_same_line p11_6 p11_0) (is_same_line p11_6 p11_2) (is_same_line p11_6 p11_3) (is_same_line p11_6 p11_4) (is_same_line p11_6 p3_6) (is_same_line p11_6 p4_6) (is_same_line p11_6 p6_6) (is_same_line p11_6 p7_6) (is_same_line p11_6 p8_6) (is_same_line p11_6 p11_-1) (is_same_line p11_6 p12_6) (is_same_line p1_7 p1_1) (is_same_line p1_7 p1_2) (is_same_line p1_7 p1_3) (is_same_line p1_7 p1_4) (is_same_line p1_7 p1_5) (is_same_line p1_7 p2_7) (is_same_line p1_7 p3_7) (is_same_line p1_7 p4_7) (is_same_line p1_7 p6_7) (is_same_line p1_7 p7_7) (is_same_line p1_7 p9_7) (is_same_line p1_7 p10_7) (is_same_line p1_7 p1_8) (is_same_line p2_7 p2_0) (is_same_line p2_7 p2_1) (is_same_line p2_7 p2_4) (is_same_line p2_7 p1_7) (is_same_line p2_7 p3_7) (is_same_line p2_7 p4_7) (is_same_line p2_7 p6_7) (is_same_line p2_7 p7_7) (is_same_line p2_7 p9_7) (is_same_line p2_7 p10_7) (is_same_line p2_7 p2_-1) (is_same_line p2_7 p2_8) (is_same_line p3_7 p3_0) (is_same_line p3_7 p3_1) (is_same_line p3_7 p3_4) (is_same_line p3_7 p3_6) (is_same_line p3_7 p1_7) (is_same_line p3_7 p2_7) (is_same_line p3_7 p4_7) (is_same_line p3_7 p6_7) (is_same_line p3_7 p7_7) (is_same_line p3_7 p9_7) (is_same_line p3_7 p10_7) (is_same_line p3_7 p3_-1) (is_same_line p3_7 p3_8) (is_same_line p4_7 p4_0) (is_same_line p4_7 p4_2) (is_same_line p4_7 p4_3) (is_same_line p4_7 p4_5) (is_same_line p4_7 p4_6) (is_same_line p4_7 p1_7) (is_same_line p4_7 p2_7) (is_same_line p4_7 p3_7) (is_same_line p4_7 p6_7) (is_same_line p4_7 p7_7) (is_same_line p4_7 p9_7) (is_same_line p4_7 p10_7) (is_same_line p4_7 p4_-1) (is_same_line p4_7 p4_8) (is_same_line p6_7 p6_1) (is_same_line p6_7 p6_2) (is_same_line p6_7 p6_3) (is_same_line p6_7 p6_4) (is_same_line p6_7 p6_6) (is_same_line p6_7 p1_7) (is_same_line p6_7 p2_7) (is_same_line p6_7 p3_7) (is_same_line p6_7 p4_7) (is_same_line p6_7 p7_7) (is_same_line p6_7 p9_7) (is_same_line p6_7 p10_7) (is_same_line p6_7 p6_8) (is_same_line p7_7 p7_0) (is_same_line p7_7 p7_2) (is_same_line p7_7 p7_3) (is_same_line p7_7 p7_5) (is_same_line p7_7 p7_6) (is_same_line p7_7 p1_7) (is_same_line p7_7 p2_7) (is_same_line p7_7 p3_7) (is_same_line p7_7 p4_7) (is_same_line p7_7 p6_7) (is_same_line p7_7 p9_7) (is_same_line p7_7 p10_7) (is_same_line p7_7 p7_-1) (is_same_line p7_7 p7_8) (is_same_line p9_7 p9_1) (is_same_line p9_7 p9_2) (is_same_line p9_7 p9_3) (is_same_line p9_7 p9_4) (is_same_line p9_7 p9_5) (is_same_line p9_7 p1_7) (is_same_line p9_7 p2_7) (is_same_line p9_7 p3_7) (is_same_line p9_7 p4_7) (is_same_line p9_7 p6_7) (is_same_line p9_7 p7_7) (is_same_line p9_7 p10_7) (is_same_line p9_7 p9_8) (is_same_line p10_7 p10_0) (is_same_line p10_7 p10_1) (is_same_line p10_7 p10_3) (is_same_line p10_7 p10_4) (is_same_line p10_7 p10_5) (is_same_line p10_7 p1_7) (is_same_line p10_7 p2_7) (is_same_line p10_7 p3_7) (is_same_line p10_7 p4_7) (is_same_line p10_7 p6_7) (is_same_line p10_7 p7_7) (is_same_line p10_7 p9_7) (is_same_line p10_7 p10_-1) (is_same_line p10_7 p10_8) (is_same_line p0_-1 p0_0) (is_same_line p0_-1 p0_1) (is_same_line p0_-1 p0_2) (is_same_line p0_-1 p0_3) (is_same_line p0_-1 p2_-1) (is_same_line p0_-1 p3_-1) (is_same_line p0_-1 p4_-1) (is_same_line p0_-1 p7_-1) (is_same_line p0_-1 p10_-1) (is_same_line p0_-1 p11_-1) (is_same_line p1_8 p1_1) (is_same_line p1_8 p1_2) (is_same_line p1_8 p1_3) (is_same_line p1_8 p1_4) (is_same_line p1_8 p1_5) (is_same_line p1_8 p1_7) (is_same_line p1_8 p2_8) (is_same_line p1_8 p3_8) (is_same_line p1_8 p4_8) (is_same_line p1_8 p6_8) (is_same_line p1_8 p7_8) (is_same_line p1_8 p9_8) (is_same_line p1_8 p10_8) (is_same_line p2_-1 p2_0) (is_same_line p2_-1 p2_1) (is_same_line p2_-1 p2_4) (is_same_line p2_-1 p2_7) (is_same_line p2_-1 p0_-1) (is_same_line p2_-1 p2_8) (is_same_line p2_-1 p3_-1) (is_same_line p2_-1 p4_-1) (is_same_line p2_-1 p7_-1) (is_same_line p2_-1 p10_-1) (is_same_line p2_-1 p11_-1) (is_same_line p2_8 p2_0) (is_same_line p2_8 p2_1) (is_same_line p2_8 p2_4) (is_same_line p2_8 p2_7) (is_same_line p2_8 p1_8) (is_same_line p2_8 p2_-1) (is_same_line p2_8 p3_8) (is_same_line p2_8 p4_8) (is_same_line p2_8 p6_8) (is_same_line p2_8 p7_8) (is_same_line p2_8 p9_8) (is_same_line p2_8 p10_8) (is_same_line p3_-1 p3_0) (is_same_line p3_-1 p3_1) (is_same_line p3_-1 p3_4) (is_same_line p3_-1 p3_6) (is_same_line p3_-1 p3_7) (is_same_line p3_-1 p0_-1) (is_same_line p3_-1 p2_-1) (is_same_line p3_-1 p3_8) (is_same_line p3_-1 p4_-1) (is_same_line p3_-1 p7_-1) (is_same_line p3_-1 p10_-1) (is_same_line p3_-1 p11_-1) (is_same_line p3_8 p3_0) (is_same_line p3_8 p3_1) (is_same_line p3_8 p3_4) (is_same_line p3_8 p3_6) (is_same_line p3_8 p3_7) (is_same_line p3_8 p1_8) (is_same_line p3_8 p2_8) (is_same_line p3_8 p3_-1) (is_same_line p3_8 p4_8) (is_same_line p3_8 p6_8) (is_same_line p3_8 p7_8) (is_same_line p3_8 p9_8) (is_same_line p3_8 p10_8) (is_same_line p4_-1 p4_0) (is_same_line p4_-1 p4_2) (is_same_line p4_-1 p4_3) (is_same_line p4_-1 p4_5) (is_same_line p4_-1 p4_6) (is_same_line p4_-1 p4_7) (is_same_line p4_-1 p0_-1) (is_same_line p4_-1 p2_-1) (is_same_line p4_-1 p3_-1) (is_same_line p4_-1 p4_8) (is_same_line p4_-1 p7_-1) (is_same_line p4_-1 p10_-1) (is_same_line p4_-1 p11_-1) (is_same_line p4_8 p4_0) (is_same_line p4_8 p4_2) (is_same_line p4_8 p4_3) (is_same_line p4_8 p4_5) (is_same_line p4_8 p4_6) (is_same_line p4_8 p4_7) (is_same_line p4_8 p1_8) (is_same_line p4_8 p2_8) (is_same_line p4_8 p3_8) (is_same_line p4_8 p4_-1) (is_same_line p4_8 p6_8) (is_same_line p4_8 p7_8) (is_same_line p4_8 p9_8) (is_same_line p4_8 p10_8) (is_same_line p6_8 p6_1) (is_same_line p6_8 p6_2) (is_same_line p6_8 p6_3) (is_same_line p6_8 p6_4) (is_same_line p6_8 p6_6) (is_same_line p6_8 p6_7) (is_same_line p6_8 p1_8) (is_same_line p6_8 p2_8) (is_same_line p6_8 p3_8) (is_same_line p6_8 p4_8) (is_same_line p6_8 p7_8) (is_same_line p6_8 p9_8) (is_same_line p6_8 p10_8) (is_same_line p7_-1 p7_0) (is_same_line p7_-1 p7_2) (is_same_line p7_-1 p7_3) (is_same_line p7_-1 p7_5) (is_same_line p7_-1 p7_6) (is_same_line p7_-1 p7_7) (is_same_line p7_-1 p0_-1) (is_same_line p7_-1 p2_-1) (is_same_line p7_-1 p3_-1) (is_same_line p7_-1 p4_-1) (is_same_line p7_-1 p7_8) (is_same_line p7_-1 p10_-1) (is_same_line p7_-1 p11_-1) (is_same_line p7_8 p7_0) (is_same_line p7_8 p7_2) (is_same_line p7_8 p7_3) (is_same_line p7_8 p7_5) (is_same_line p7_8 p7_6) (is_same_line p7_8 p7_7) (is_same_line p7_8 p1_8) (is_same_line p7_8 p2_8) (is_same_line p7_8 p3_8) (is_same_line p7_8 p4_8) (is_same_line p7_8 p6_8) (is_same_line p7_8 p7_-1) (is_same_line p7_8 p9_8) (is_same_line p7_8 p10_8) (is_same_line p9_8 p9_1) (is_same_line p9_8 p9_2) (is_same_line p9_8 p9_3) (is_same_line p9_8 p9_4) (is_same_line p9_8 p9_5) (is_same_line p9_8 p9_7) (is_same_line p9_8 p1_8) (is_same_line p9_8 p2_8) (is_same_line p9_8 p3_8) (is_same_line p9_8 p4_8) (is_same_line p9_8 p6_8) (is_same_line p9_8 p7_8) (is_same_line p9_8 p10_8) (is_same_line p10_-1 p10_0) (is_same_line p10_-1 p10_1) (is_same_line p10_-1 p10_3) (is_same_line p10_-1 p10_4) (is_same_line p10_-1 p10_5) (is_same_line p10_-1 p10_7) (is_same_line p10_-1 p0_-1) (is_same_line p10_-1 p2_-1) (is_same_line p10_-1 p3_-1) (is_same_line p10_-1 p4_-1) (is_same_line p10_-1 p7_-1) (is_same_line p10_-1 p10_8) (is_same_line p10_-1 p11_-1) (is_same_line p10_8 p10_0) (is_same_line p10_8 p10_1) (is_same_line p10_8 p10_3) (is_same_line p10_8 p10_4) (is_same_line p10_8 p10_5) (is_same_line p10_8 p10_7) (is_same_line p10_8 p1_8) (is_same_line p10_8 p2_8) (is_same_line p10_8 p3_8) (is_same_line p10_8 p4_8) (is_same_line p10_8 p6_8) (is_same_line p10_8 p7_8) (is_same_line p10_8 p9_8) (is_same_line p10_8 p10_-1) (is_same_line p11_-1 p11_0) (is_same_line p11_-1 p11_2) (is_same_line p11_-1 p11_3) (is_same_line p11_-1 p11_4) (is_same_line p11_-1 p11_6) (is_same_line p11_-1 p0_-1) (is_same_line p11_-1 p2_-1) (is_same_line p11_-1 p3_-1) (is_same_line p11_-1 p4_-1) (is_same_line p11_-1 p7_-1) (is_same_line p11_-1 p10_-1) (is_same_line p-1_0 p0_0) (is_same_line p-1_0 p2_0) (is_same_line p-1_0 p3_0) (is_same_line p-1_0 p4_0) (is_same_line p-1_0 p7_0) (is_same_line p-1_0 p10_0) (is_same_line p-1_0 p11_0) (is_same_line p-1_0 p12_0) (is_same_line p-1_0 p-1_1) (is_same_line p-1_0 p-1_2) (is_same_line p-1_0 p-1_3) (is_same_line p12_0 p0_0) (is_same_line p12_0 p2_0) (is_same_line p12_0 p3_0) (is_same_line p12_0 p4_0) (is_same_line p12_0 p7_0) (is_same_line p12_0 p10_0) (is_same_line p12_0 p11_0) (is_same_line p12_0 p-1_0) (is_same_line p12_0 p12_2) (is_same_line p12_0 p12_3) (is_same_line p12_0 p12_4) (is_same_line p12_0 p12_6) (is_same_line p-1_1 p0_1) (is_same_line p-1_1 p1_1) (is_same_line p-1_1 p2_1) (is_same_line p-1_1 p3_1) (is_same_line p-1_1 p5_1) (is_same_line p-1_1 p6_1) (is_same_line p-1_1 p8_1) (is_same_line p-1_1 p9_1) (is_same_line p-1_1 p10_1) (is_same_line p-1_1 p-1_0) (is_same_line p-1_1 p-1_2) (is_same_line p-1_1 p-1_3) (is_same_line p-1_2 p0_2) (is_same_line p-1_2 p1_2) (is_same_line p-1_2 p4_2) (is_same_line p-1_2 p6_2) (is_same_line p-1_2 p7_2) (is_same_line p-1_2 p8_2) (is_same_line p-1_2 p9_2) (is_same_line p-1_2 p11_2) (is_same_line p-1_2 p-1_0) (is_same_line p-1_2 p-1_1) (is_same_line p-1_2 p12_2) (is_same_line p-1_2 p-1_3) (is_same_line p12_2 p0_2) (is_same_line p12_2 p1_2) (is_same_line p12_2 p4_2) (is_same_line p12_2 p6_2) (is_same_line p12_2 p7_2) (is_same_line p12_2 p8_2) (is_same_line p12_2 p9_2) (is_same_line p12_2 p11_2) (is_same_line p12_2 p12_0) (is_same_line p12_2 p-1_2) (is_same_line p12_2 p12_3) (is_same_line p12_2 p12_4) (is_same_line p12_2 p12_6) (is_same_line p-1_3 p0_3) (is_same_line p-1_3 p1_3) (is_same_line p-1_3 p4_3) (is_same_line p-1_3 p6_3) (is_same_line p-1_3 p7_3) (is_same_line p-1_3 p9_3) (is_same_line p-1_3 p10_3) (is_same_line p-1_3 p11_3) (is_same_line p-1_3 p-1_0) (is_same_line p-1_3 p-1_1) (is_same_line p-1_3 p-1_2) (is_same_line p-1_3 p12_3) (is_same_line p12_3 p0_3) (is_same_line p12_3 p1_3) (is_same_line p12_3 p4_3) (is_same_line p12_3 p6_3) (is_same_line p12_3 p7_3) (is_same_line p12_3 p9_3) (is_same_line p12_3 p10_3) (is_same_line p12_3 p11_3) (is_same_line p12_3 p12_0) (is_same_line p12_3 p12_2) (is_same_line p12_3 p-1_3) (is_same_line p12_3 p12_4) (is_same_line p12_3 p12_6) (is_same_line p12_4 p1_4) (is_same_line p12_4 p2_4) (is_same_line p12_4 p3_4) (is_same_line p12_4 p5_4) (is_same_line p12_4 p6_4) (is_same_line p12_4 p8_4) (is_same_line p12_4 p9_4) (is_same_line p12_4 p10_4) (is_same_line p12_4 p11_4) (is_same_line p12_4 p12_0) (is_same_line p12_4 p12_2) (is_same_line p12_4 p12_3) (is_same_line p12_4 p12_6) (is_same_line p12_6 p3_6) (is_same_line p12_6 p4_6) (is_same_line p12_6 p6_6) (is_same_line p12_6 p7_6) (is_same_line p12_6 p8_6) (is_same_line p12_6 p11_6) (is_same_line p12_6 p12_0) (is_same_line p12_6 p12_2) (is_same_line p12_6 p12_3) (is_same_line p12_6 p12_4)
    )
    (:goal
        (or (agent-at p0_-1) (agent-at p1_8) (agent-at p2_-1) (agent-at p2_8) (agent-at p3_-1) (agent-at p3_8) (agent-at p4_-1) (agent-at p4_8) (agent-at p6_8) (agent-at p7_-1) (agent-at p7_8) (agent-at p9_8) (agent-at p10_-1) (agent-at p10_8) (agent-at p11_-1) (agent-at p-1_0) (agent-at p12_0) (agent-at p-1_1) (agent-at p-1_2) (agent-at p12_2) (agent-at p-1_3) (agent-at p12_3) (agent-at p12_4) (agent-at p12_6))
    )
)
