/**********************************************************
 *                        Maya
 **********************************************************/

/**********************************************************
 * Ocean base
 **********************************************************/
@base: #548696;
/*@base: transparent;*/
/*@base: #72B2BC;*/
@ocean: @base;

Map {
  background-color:@ocean;
}

.water-poly {
  polygon-fill:@ocean; 
}

.water-line::glow {
  line-color:#548696;
  line-opacity: .4;
  line-comp-op: multiply;
  line-width: 3;
}

.water-line::glowtwo {
  line-color:#b0cad3;
  line-opacity: .18;
  line-width: 1;
}

/*#rivers-na, #rivers-ca {*/
  /*[>text-name:"[Name]"; text-face-name:@sans; text-allow-overlap: true;<]*/
  /*[>text-dy: 10;<]*/
  /*[>text-fill: #BBB;<]*/
  /*[>text-placement: line;<]*/
  /*[>text-size: 12;<]*/

  /*[> Base river style <]*/
  /*[zoom>1] {*/
    /*line-color:@base;*/
    /*line-width: 1.2;*/
    /*line-opacity: .9;*/
    /*line-comp-op: overlay;*/
  /*}*/
  /*[zoom>5] {*/
    /*line-width: .1;*/
  /*}*/

  /*[> Biggest rivers <]*/
  /*[ScaleRank<5] {*/
    /*line-width: 1;*/
    /*[zoom<5] { line-width: .5; }*/
  /*}*/

  /*[> Big rivers <]*/
  /*[ScaleRank=5] {*/
    /*line-width: 1;*/
    /*[zoom<5] { line-width: .5; }*/
  /*}*/

  /*[> Smaller rivers <]*/
  /*[ScaleRank=6] {*/
    /*line-width: .8;*/
    /*[zoom<5] { line-width: .4; }*/
  /*}*/
  /*[ScaleRank=7] {*/
    /*[zoom>4] { line-width: .8; }*/
    /*[zoom>6] { line-width: 1.2; }*/
  /*}*/
  /*[ScaleRank=8] {*/
    /*[zoom>5] { line-width: .7; }*/
    /*[zoom>6] { line-width: .9; }*/
  /*}*/
  /*[ScaleRank>8] {*/
    /*[zoom>6] { line-width: .8; }*/
  /*}*/
/*}*/
/**********************************************************
 * Land base
 **********************************************************/
/* Lighter brown */
/*@landbg: #68493e;*/

/* Land as basic grey */
/*@landbg: #111;*/

/* Land as olive green */
/*@landbg: #493C20;*/

/* Control room default */
/*@landbg: #0A202A;*/

/* Maya brown - Same as print maps */
/*Light brown*/
/*@landbg: #c9aea5;*/
/*Medium brown*/
/*@landbg: #b69285;*/
/*Dark brown*/
@landbg: #906556;
/*Very dark brown*/
/*@landbg: #261a16;*/
/* Brown from Maya print maps*/
/*@landbg: #46312A;*/
/*White*/
/*@landbg: #FFF;*/
/*Black*/
/*@landbg: #000;*/


#land[zoom>=0] {
  polygon-fill: @landbg;
  polygon-gamma:0.2;
}

/**********************************************************
 * Political boundaries
 **********************************************************/
#country-boundaries {
  line-color:#8f8f8f;
}
/*#country-boundaries[zoom>1],*/
/*#country-outlines[zoom>1]{*/
  /*line-dasharray:1,3;*/
  /*line-width:1.5;*/
  /*line-opacity:0.5;*/
  /*[zoom=4] { line-width:0.6; }*/
  /*[zoom=5] { line-width:0.8; }*/
  /*[zoom=6] { line-width:1; }*/
  /*[zoom=7] { line-width:1.2; }*/
  /*[zoom=8] { line-width:1.4; }*/
  /*[zoom>8] { line-width:1.6; }*/
/*}*/
/*#subcountry-boundaries[COUNTRYNAM='US'][zoom=4],*/
/*#subcountry-boundaries[COUNTRYNAM='Canada'][zoom=4],*/
/*#subcountry-boundaries[COUNTRYNAM='Australia'][zoom=4],*/
#subcountry-boundaries {
  line-color:#8f8f8f;
  line-dasharray:4,2;
  line-opacity:0.5;
  line-width:.4;
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

/**********************************************************
 * Modern population centers
 **********************************************************/
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

/**********************************************************
 * Ancient Mayan archaeological sites
 **********************************************************/
.maya {
  marker-allow-overlap:true;

  /* Beeswax yellow */
  /*marker-fill:#ffcc66;*/
  /*marker-line-color:#ffcc66;*/

  /* Light tan */
  /*marker-fill:#CF7361;*/
  /*marker-line-color:#D28E4F;*/

  /* Control room default */
  /*marker-line-color:#938562;*/

  /* Mayan cinabar */
  /*marker-fill:#771823;*/

  /* Maya tan */
  /*marker-fill:#E9CCB0;*/
  marker-fill:#d7a16e;
  marker-line-color:#110c0a;
  marker-opacity: .7;

  [rank=1] { marker-width:24; }
  [rank=2] { marker-width:18; }
  [rank=3] { marker-width:16; }
  [rank=4] { marker-width:12; }
  [rank=5] { marker-width:8; }
}

/* 0-4 */
/*#maya-rank-01[zoom=3] { marker-line-color:#ffcc66; marker-width:1; }*/
/*#maya-rank-01[zoom=4] { marker-line-color:#ffcc66; marker-width:3; }*/
/*#maya-rank-01[zoom=5] { marker-line-color:#ffcc66; marker-width:4; }*/
/*#maya-rank-01[zoom=6] { marker-width:10; }*/
/*#maya-rank-01[zoom=7] { marker-width:13; }*/
/*#maya-rank-01[zoom=8] { marker-width:30; }*/
/*#maya-rank-01[zoom>8] { marker-width:15; }*/

#maya-rank-01 {
  marker-width:16;
  marker-opacity:.9;
  marker-line-opacity:.9;
}

#maya-rank-02 {
  marker-width:10;
  marker-opacity:.8;
  marker-line-opacity:.8;
}

#maya-rank-03 {
  marker-width:8;
  marker-opacity:.4;
  marker-line-opacity:0;
}

#maya-rank-04 {
  marker-width:5;
  marker-opacity:.2;
  marker-line-opacity:0;
}

#maya-rank-05 {
  marker-width:2;
  marker-opacity:.2;
  marker-line-opacity:0;
}

/*#maya-rank-01[zoom>5] {*/
  /*text-name:"[name]";*/
  /*text-face-name:@sans;*/
  /*text-fill: #BBB;*/
  /*text-allow-overlap: true;*/
  /*text-size: 12;*/
  /*text-placement-type: simple;*/
  /*text-placements: "NE,S,E,W,N,SE,NW,SW,16,14,12";*/
  /*text-dy: 10;*/
  /*text-dx: 10;*/
  /*[zoom=7] { text-size:14; }*/
  /*[zoom=8] { text-size:14; }*/
  /*[zoom=9] { text-size:16; }*/
  /*[zoom>9] { text-size:18; }*/

  /* Custom label placements to prevent overlap */
  /*[name='El Mirador'] {
    text-placements: "NE";
    text-dx: 5;
  }
  [name='Tikal'], [name='Nakbe'], [name='Comalcalco'] {
    text-placements: "SE";
    text-dx: 5;
  }*/
/*}*/

/*#maya-rank-02 {*/
  /*marker-width:0;*/
  /*[zoom>3] { marker-width:3; marker-opacity:.03; marker-line-opacity:.03;}*/
  /*[zoom>5] { marker-width:4; marker-opacity:.05; marker-line-opacity:.05;}*/
  /*[zoom>6] { marker-width:8; marker-opacity:.3; marker-line-opacity:.3;}*/
  /*[zoom>7] { marker-width:8; marker-opacity:.15; marker-line-opacity:.15 }*/
  /*[zoom>8] {*/
    /*marker-width:9;*/
    /*marker-opacity:.2;*/
    /*marker-line-opacity:.2;*/
    /*[>text-name:"[name]";<]*/
    /*[>text-face-name:@sans;<]*/
    /*[>text-fill: #FFF;<]*/
    /*[>text-allow-overlap: true;<]*/
    /*[>text-opacity: .5;<]*/
    /*[>text-size: 12;<]*/
    /*[>text-placement-type: simple;<]*/
    /*[>text-placements: "S,E,W,N,NE,SE,NW,SW,16,14,12";<]*/
    /*[>text-dy: 10;<]*/
    /*[>text-dx: 10;<]*/
  /*}*/
  /*[zoom>9] {*/
    /*marker-width:10;*/
    /*marker-opacity:.3;*/
    /*marker-line-opacity:.3;*/
  /*}*/
  /*[zoom>11] {*/
    /*marker-width:14;*/
    /*marker-opacity:.3;*/
    /*marker-line-opacity:.3;*/
  /*}*/
/*}*/

/*#maya-rank-03 {*/
  /*marker-width:3;*/
  /*marker-opacity:.2;*/
  /*marker-line-opacity:.2;*/
  /*[>[zoom>7] {<]*/
    /*[>marker-width:3;<]*/
    /*[>marker-opacity:.1;<]*/
    /*[>marker-line-opacity:.1;<]*/
  /*[>}<]*/
  /*[>[zoom>8] {<]*/
    /*[>marker-width:4;<]*/
    /*[>marker-opacity:.15;<]*/
    /*[>marker-line-opacity:.15;<]*/
  /*[>}<]*/
  /*[>[zoom>9] {<]*/
    /*[>marker-width:4;<]*/
    /*[>marker-opacity:.2;<]*/
    /*[>marker-line-opacity:.2;<]*/
  /*[>}<]*/
  /*[>[zoom>11] {<]*/
    /*[>marker-width:7;<]*/
    /*[>marker-opacity:.35;<]*/
    /*[>marker-line-opacity:.35;<]*/
    /*[>[>text-name:"[name]";<]<]*/
    /*[>[>text-face-name:@sans;<]<]*/
    /*[>[>text-fill: #FFF;<]<]*/
    /*[>[>text-allow-overlap: true;<]<]*/
    /*[>[>text-opacity: .5;<]<]*/
    /*[>[>text-size: 13;<]<]*/
    /*[>[>text-placement-type: simple;<]<]*/
    /*[>[>text-placements: "S,E,W,N,NE,SE,NW,SW,16,14,12";<]<]*/
    /*[>[>text-dy: 10;<]<]*/
    /*[>[>text-dx: 10;<]<]*/
  /*[>}<]*/
/*}*/

/*#maya-rank-04 {*/
  /*marker-width:2;*/
  /*marker-opacity:.15;*/
  /*marker-line-opacity:.15;*/
  /*[zoom>7] {*/
    /*marker-width:3;*/
    /*marker-opacity:.1;*/
    /*marker-line-opacity:.1;*/
  /*}*/
  /*[zoom>8] {*/
    /*marker-width:4;*/
    /*marker-opacity:.15;*/
    /*marker-line-opacity:.15;*/
  /*}*/
  /*[zoom>9] {*/
    /*marker-width:4;*/
    /*marker-opacity:.2;*/
    /*marker-line-opacity:.2;*/
  /*}*/
  /*[zoom>11] {*/
    /*marker-width:7;*/
    /*marker-opacity:.35;*/
    /*marker-line-opacity:.35;*/
    /*[>text-name:"[name]";<]*/
    /*[>text-face-name:@sans;<]*/
    /*[>text-fill: #FFF;<]*/
    /*[>text-allow-overlap: true;<]*/
    /*[>text-opacity: .5;<]*/
    /*[>text-size: 13;<]*/
    /*[>text-placement-type: simple;<]*/
    /*[>text-placements: "S,E,W,N,NE,SE,NW,SW,16,14,12";<]*/
    /*[>text-dy: 10;<]*/
    /*[>text-dx: 10;<]*/
  /*}*/
/*}*/

/*#maya-rank-05 {*/
  /*marker-width:2;*/
  /*marker-opacity:.3;*/
  /*marker-line-opacity:.3;*/
  /*[zoom>7] {*/
    /*marker-width:3;*/
    /*marker-opacity:.1;*/
    /*marker-line-opacity:.1;*/
  /*}*/
  /*[zoom>8] {*/
    /*marker-width:4;*/
    /*marker-opacity:.15;*/
    /*marker-line-opacity:.15;*/
  /*}*/
  /*[zoom>9] {*/
    /*marker-width:4;*/
    /*marker-opacity:.2;*/
    /*marker-line-opacity:.2;*/
  /*}*/
  /*[zoom>11] {*/
    /*marker-width:7;*/
    /*marker-opacity:.35;*/
    /*marker-line-opacity:.35;*/
    /*[>text-name:"[name]";<]*/
    /*[>text-face-name:@sans;<]*/
    /*[>text-fill: #FFF;<]*/
    /*[>text-allow-overlap: true;<]*/
    /*[>text-opacity: .5;<]*/
    /*[>text-size: 13;<]*/
    /*[>text-placement-type: simple;<]*/
    /*[>text-placements: "S,E,W,N,NE,SE,NW,SW,16,14,12";<]*/
    /*[>text-dy: 10;<]*/
    /*[>text-dx: 10;<]*/
  /*}*/
/*}*/

.maya-graphic {
  text-name:"[name]";
  text-face-name:@sans;
  text-fill: #BBB;
  text-allow-overlap: true;
  text-size: 12;
  text-placement-type: simple;
  text-placements: "NE,S,E,W,N,SE,NW,SW,16,14,12";
  text-dy: 10;
  text-dx: 10;
  marker-allow-overlap:true;
  marker-fill:#ffcc66;
  marker-line-color:#ffcc66;
  marker-width: 5;
}

.hillshade, .slope, {
  raster-scaling: bilinear;
  raster-comp-op: multiply;
  /*raster-comp-op: overlay;*/
}

.color {
  raster-scaling: bilinear;
  /* Multiply */
  /*raster-opacity: .9;*/
  /* Overlay */
  raster-opacity: .4;
}

.hillshade {
  /* Multiply */
  raster-opacity: .8;
  /* Overlay */
  /*raster-opacity: .7;*/
}

.slope {
  /* Multiply */
  raster-opacity: .7;
  /* Overlay */
  /*raster-opacity: .7;*/
}
