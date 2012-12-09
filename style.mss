/**********************************************************
 *                        Maya
 **********************************************************/

/**********************************************************
 * Ocean base
 **********************************************************/
@base: #548696;
@ocean: @base;

Map { background-color:@ocean; }
.water-poly { polygon-fill:@ocean; }

/**********************************************************
 * Land base
 **********************************************************/
@landbg: #111;

/* Land as olive green */
/*@landbg: #493C20;*/

/* Control room default */
/*@landbg: #0A202A;*/

#land[zoom>=0] {
  polygon-fill: @landbg;
  polygon-gamma:0.3;
}

#international_boundaries[zoom>1] {
  line-color:#0AF;
  line-dasharray:1,3;
  line-width:0.5;
  line-opacity:0.5;
  [zoom=4] { line-width:0.6; }
  [zoom=5] { line-width:0.8; }
  [zoom=6] { line-width:1; }
  [zoom=7] { line-width:1.2; }
  [zoom=8] { line-width:1.4; }
  [zoom>8] { line-width:1.6; }
}

#subnational_boundaries[COUNTRYNAM='US'][zoom=4],
#subnational_boundaries[COUNTRYNAM='Canada'][zoom=4],
#subnational_boundaries[COUNTRYNAM='Australia'][zoom=4],
#map-units[zoom>4],
#subnational_boundaries[zoom>4] {
  line-color:#0AF;
  line-dasharray:4,2;
  line-opacity:0.2;
  line-width:0.4;
  [zoom=5] { line-width:0.5; }
  [zoom=6] { line-width:0.6; }
  [zoom=7] { line-width:0.8; }
  [zoom=8] { line-width:1.0; }
  [zoom>8] { line-width:1.2; }
}

#geo-lines[ScaleRank<10] {
  line-color:#ba22a8;
  line-dasharray:1,4;
  line-opacity:0.8;
  line-width:0.25;
  line-gamma:0.2;
}

#urban {
  polygon-fill:#9933ff;
  polygon-opacity:.4;
  line-color:#333;
  line-opacity:0.33;
  [zoom=3] { line-width:0.4; }
  [zoom=4] { line-width:0.6; }
  [zoom=5] { line-width:0.8; }
  [zoom=6] { line-width:1; }
  [zoom>6] { line-width:1.2; }
}

.maya {
  marker-allow-overlap:true;

  /* Beeswax yellow */
  marker-fill:#ffcc66;
  marker-line-color:@landbg;
  /* Light tan */
  /*marker-fill:#CF7361;*/
  /*marker-line-color:#D28E4F;*/

  /* Mayan cinabar */
  /*marker-fill:#771823;*/

  /* Control room default */
  /*marker-line-color:#938562;*/
}

#maya-rank-01 {
  marker-width:10;
}

#maya-rank-01[zoom>5]{
  text-name:"[Name]";
  text-face-name:@sans;
  text-fill: #FFF;
  text-allow-overlap: true;
  text-min-distance: 20;
  text-opacity: .5;
  text-size: 15;
  text-placement-type: simple;
  text-placements: "E";
  text-wrap-width:40;
  text-dy: 0;
  text-dx: 10;
  [zoom=6] { text-size:10; }
  [zoom=7] { text-size:12; }
}

#maya-rank-02 {
  marker-width:5;
  marker-opacity:.06;
}

#maya-rank-02[zoom>7]{
}

#maya-rank-03 {
  marker-width:.5;
  marker-opacity:.05;
}

#maya-all-points {
  marker-width:1;
  marker-fill:#ffcc66;
  marker-line-color:#ffcc66;
  [zoom=7],[zoom=8] {
    marker-line-color:#ffcc66;
  }
  marker-allow-overlap:true;
  marker-opacity: .05;
}

